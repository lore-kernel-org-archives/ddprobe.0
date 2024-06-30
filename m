Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A55C12C49E
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719737063; cv=none; b=DzVLQUvFIUkA4LzLV0nUVZlRK9t+gPRBrgenqx3fBUN4FpyGAdlnMElcDqEMlTsx3MB8EKmkfOAZ5GZCjZdVHPOaqnu/tDsTjIDq9QCbijDrFUaM263XgNQ/i9oO80epyE0yOr3xaB7tkZ7u/kMVTnpcAFLCgjjmgQY90hdmi7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719737063; c=relaxed/simple;
	bh=H8HipmCnHvp/EmjsEdwcVIZ0VtTXWLGwJhmLukctcDg=;
	h=To:Subject:From:Message-Id:Date; b=KTE9Exg3a3ZDi6Naj8OoplhY6FWOxuSktMrjHOCAvYhQV6aFGNPRoIHxVjyS5/i6/10m5nYyGjD9EFLyfgM5URBpx6d0gL49CU0PppMUYTKBNtCaM+5p6jwysq+F23fqflWLqsnKQR0uqAubXgNgu3gPh+4OSI3U1nQvwFN3Sdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB6xU4uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB6xU4uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08BCC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719737062;
	bh=H8HipmCnHvp/EmjsEdwcVIZ0VtTXWLGwJhmLukctcDg=;
	h=To:Subject:From:Date:From;
	b=GB6xU4ujNWwGNzo12SFByTzia/g1jmRrFrgsphOo26AbJIGLsbF/hmxyqK6zvn1nN
	 LPrylfNMGk+26Giqqd6hfidvVoQ4esdpl6rvtpiJS0nhzRzDlzo+RbGCb9PPSQdb3H
	 gidYypagzVq6LOMq1600Amzi1cA7FPcTNx8Ushm+xS/JJDWY1UZ56+vgRSpRmexNhN
	 GAnUKO/LwCOhgnDeVEt07zzmjbSwKCc5Ot8oPKfCBxvVLNp70CRDda4qal/qQIJOsX
	 hmG7GfSVJNss4mX8aozoXrZbtzpRW+OlHgpSgnQqxVLiknCJfGkxk14v4bXoFn+vX2
	 oj/twcYf3aX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE2FC30653
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973706277.11885.7779677713240267117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec69a884eb775f9528d92ecdffc940a4d5822d32a46cfbbeff6e3008c9c970da
Date: Sun, 30 Jun 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719737062
