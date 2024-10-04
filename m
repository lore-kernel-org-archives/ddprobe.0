Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E21231C9D
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728077754; cv=none; b=rPPLde2j2ymKsC4j0iBWsWpymRVXeJ63mgfgn5HDdyy+ABjTPPEb1lsupZvHbDPBJIK9Geug6h+Tdd7tVFVP2AE+txuahUaXAz8drNl2t9tLDPJvDcJHANa0Swb5EQ38iG23S/GG06Ctd/LaNWbmLEms6m2EN3zDhNB1LWLiJkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728077754; c=relaxed/simple;
	bh=Zrd9CuAYSmY2rZrxjNxd9qGmZSPXxjdMGDvG/0xkQlI=;
	h=To:Subject:From:Message-Id:Date; b=u++eu0tG8uEoDczZAwWVXY+P8KDuQJlVb8BzsksohwysGIEZJMULVXHFphE9ZARlgM8E4UaQXfGOhiYRnLkU+dW2l/WOASNIu+dP4dn7wdOD2SU3xzaE/KhnWj7uvBD2VcarqQUnsa1Z28Z2EQihkZjBViDZ94+cRrQl70Pc0og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8oqdYfE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8oqdYfE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0C6C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728077753;
	bh=Zrd9CuAYSmY2rZrxjNxd9qGmZSPXxjdMGDvG/0xkQlI=;
	h=To:Subject:From:Date:From;
	b=E8oqdYfEsZR3IncaMyCygYFyt3QAm6CxvXDkyX7+TzIcUj1iSnj9BPaLGuN6ATjog
	 FA7jtS6ozwYbB8fItgvnEXCrJ0Sn1EM6WJqoEnlf+WZ5zQr1dojXomlqjWN9Scoejl
	 89KCRVS5326AQ8ihs54Zw8IR7mes06mdBnSdXDkd821VIR99dHom9RPfayPl8GfMP5
	 Rgm4kl3KSawATitxfnuke9LzquSu0mM5wVTcGBMokxOXKdRCcmo822t1llRikFv+4O
	 XREXESvJTYxMUc00RWjBdZcVK+eBG/vNHtoywefYh5uvBIt+4aHhble+M4pcl9eRJH
	 BtsfLgu7xqFZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C8CF885B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807775359.30871.17238474332506338090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2578c499927e5a14fd7a76505b844748ef6a084579b25e76f2260f75cc737e71
Date: Fri, 04 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728077753
