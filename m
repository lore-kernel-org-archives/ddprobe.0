Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3314A3515F1
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788343234; cv=none; b=OzOckYAoWWY1OkQk5jhFE0NKuv6UjtgVIsED+iVuyh8WSAwZoGEL5Z/iXgAFguhd8niuGCd9fNcZkRW8OwbnqSEfwfbCpfigK8I32eCPs8e1bXxBNUDyeTfVw1EiWQXqlqEiqqu9dzJ6niuPx8CHlrllV6fvMfgzerGVY3sM+4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788343234; c=relaxed/simple;
	bh=CykXrlwCjAzlhxe/w97zJJ5nmSlkj2OSWSv+r9f8ODw=;
	h=To:Subject:From:Message-Id:Date; b=nSBGNjivVN3/S14EdRQTooBY67CbNinXs2XAnopfNU986uhUytiWVqi/T+x3wWRPQ7/2ML65l7akD6t8gCH/Nb1cHC8D0Ogll+529lCusxLLm06/oRG4l+Fx8IgNOrd84heyc6rV1OzgyIHxpMfoipytrKhpaKZRFodNzTVnpEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUIDmBjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUIDmBjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1673C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788343233;
	bh=CykXrlwCjAzlhxe/w97zJJ5nmSlkj2OSWSv+r9f8ODw=;
	h=To:Subject:From:Date:From;
	b=OUIDmBjPlQTKu1Ks4FJJXnOFVzrkh85nV9hEejRY/2fG6Sqe4beEWzLzsEfm1lMQC
	 YvxPmjF7fe+CoV6rQqJ8Fog9b5HEUrhBwYJRgNyGAqaD21buL7dsXYUE1lFQiqo+1u
	 5DSckj/OApeZ01uosCInTUmPYAtyl9KEBCibECO6ggwsuxrx2yh24vT8M8p3vStD/J
	 PVbCxL2uqbvsLxxsSlaRaYrbL6OA0vKSSXYXNg6HOfu7e5jvwPqDHfhoqU+I+T9cBE
	 4INJavjkcwPLKYDDFUuqrN68D9opqYRqtDP9Izd7ARoT83WLCYviySKFV4gVMQN1qp
	 a/OBnZw1gBOvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF85C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834323370.23087.8538332535641012469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a3d899ed1a3beed415a1f9d64cb7f5d500ddd5c5bf8e2ff86982f7188f0c9d
Date: Wed, 02 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788343233
