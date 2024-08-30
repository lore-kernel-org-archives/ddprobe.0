Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324F66026A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725050754; cv=none; b=op9k51yW/70OWjeFRgRe7+25VUbsmsJfE+bY1bX5Dh4LhqDyDC9WasAAHpkvjgkFClTwLSgX8HI6Dkb9BLguLiqNgi5tX3FyrLN2FwKmYNheCRal3T3gAgGznOgh7Zt4eltUInqlWWMgkEpHxW6vjMJ9r4DmUjpivdflAT3X1L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725050754; c=relaxed/simple;
	bh=+5pKIpMEE3inHupIPMNdZxIuJ0kgqMFt4VG/2+np0sg=;
	h=To:Subject:From:Message-Id:Date; b=KYzKnN1foAaEnCxGy0kaH1qcb90VbXJssC1tVKhSnGTeaYUmi0HiSlFE4ijb7f3dsd+KFAN1iC7aXXjuf7wXW4YRyMgn0z05/YelIF1DlU/x4bi98vUPGa3dURIzCfrwFJfkOEUxRESdfwDZfrjd2waSn2FQ/O09s/R3dXz1xh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVcigTd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVcigTd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75E7C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725050753;
	bh=+5pKIpMEE3inHupIPMNdZxIuJ0kgqMFt4VG/2+np0sg=;
	h=To:Subject:From:Date:From;
	b=VVcigTd1igLU2THPDNGG4RIKvbe+L5c16YnKMAPRxY05hhzk2Xmmv7UwHq7YpYYZz
	 JL67U6VR+tFbCksoIKq/8plJ5LPqPkmSJAPEtoU/lCpnlTu4gGdFJTfpwkHG2dlEPd
	 plX5reZtoe120xj7dH5S2tUszNz+ZQWLBbkXj1dYiRsuZa/jkaLdSACc3tdtyjpGs7
	 K0TOoPDh5+2RzeVLEuU67huo0JY77+a0+BsCOurX4NkXJIIPqVkK8gmQbcnU0iV89v
	 viIZy/fgw7yqZHNQHnVe2THtCHfbfTyDUt6Epxs5oBK9TDRhrtRBmeLlkyTxPFqT2X
	 zfkgDJijP3oBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BADCA101A
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172505075363.30416.10536645767589260940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d92d974f12dd5d57d3aaaf843f94687e6b6f4eda7d267c44b40e8946cab4c1
Date: Fri, 30 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725050753
