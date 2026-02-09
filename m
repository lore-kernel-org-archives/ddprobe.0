Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BBF23E34C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770610434; cv=none; b=GnBOLxHQB+TOQwjsa3n+Laz3ZHMOHVisgIxwEYxxIxtXm72zC6mLoXJ/fdA3aO7AF4d7YaMl/5QkPM6DwPMYfrz20nHpvR8wiE96qT2S3KtU1ab7zwCO+zEWNWrQUF0tKSa42Y17RBWodW5JAwQ5oYVKG/a851zOQW+uOSbMDhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770610434; c=relaxed/simple;
	bh=KZ9NDR5ri5UpeN+Vf0fx6Mirb+FQjvpInKYxCcqf0FI=;
	h=To:Subject:From:Message-Id:Date; b=jqR7UL0yCSxBnuUGm+4voB4T0vYCVVlYOo/Yrem7SSJtClRvFvQH1KwZ/WfqETR/0umv6WHrCEYdQT63zHEyIV6k8pOCgFXb69H+qDdYjjwWdXUG5ESCgwiLxTmUhFZABrekMCcSefO2WWUfJ0e4eGVmPZA1egBUWKfmhZUa2qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiCWs9zU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiCWs9zU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AC2C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770610433;
	bh=KZ9NDR5ri5UpeN+Vf0fx6Mirb+FQjvpInKYxCcqf0FI=;
	h=To:Subject:From:Date:From;
	b=RiCWs9zUxi9dXmQ1x2TCWmGUqUFaD5NImYyZKE/ylAqi4oqivh8P8vZdK6K7C3pAR
	 qBYf7y55fFgzwbbn/GKeAxIanEY2kNCB3GXn8wl/d/dEYt6/rfMN3v/OCZuatE2LRt
	 2ikpeacYNdRrDeG6AfQ6xgGV8v3hzdWbmpp5Wcyxmxnz3HhtEfdNipWK9IHNFRsgnN
	 TFoPCjJhU/LKSp2vu0ZvBxbp2dKzeMUvOVUqmyE3C5m4bXd8zCDNCx0HLGRAzE+XML
	 rryh1jwONOSwTdEfFMLes0YMiqMzo87bEAfGTojYRnCyvJbxP4iavWxcAJV0rw841x
	 c/NSPdSgVC5ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD14EF06EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061043358.16132.15064915193973366367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6cf6cf819667d145bdcc7a6cdb932ec9b43f0101919c5a0aa080e1e461eced
Date: Mon, 09 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770610433
