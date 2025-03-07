Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDF8256C7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741379334; cv=none; b=J+TEWAWUE3tegpHGF6HHCCMf8vj6d8gcLpUthS517T7pVXLVIyggE/SQ4eTxsGDpkRgvYSfko7a+BfoErO2BZ7CGMKIpjXmUZ1JAAWA5gc2Wom5jPL/WKyVEcu82hBGTKDGEdZ0asYTtMkAQdeAPUq81yLFuZZ1DaBDIUG88GUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741379334; c=relaxed/simple;
	bh=zipZ4lLa3dF2yhL5148vSRDf3diLv1mJ1oL4eicFhJU=;
	h=To:Subject:From:Message-Id:Date; b=QUJr6J6ifgji0BmUp/aQTPf50G1A8e0xYxy6MGTKwfqJGtfndDlOVL2U+T6G3y5jKmFRDQKVla/SrZtv8oVGrCO0HFjTBddt37jbgkoYg/s8gHnvGnl7qQXZ8eV5wdZ3ZF/1zD86dIjOKQAiD/YyjrW6q+3NscmV2yoJLw42s24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0D+btq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0D+btq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ABAC4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741379333;
	bh=zipZ4lLa3dF2yhL5148vSRDf3diLv1mJ1oL4eicFhJU=;
	h=To:Subject:From:Date:From;
	b=B0D+btq/U4IqSeuoXO9nmAwdr/anMEeoi39N9TlGdFiYCtVmNxm/jwxADjSy/TfmR
	 5ZBG1XyWu7gCjiZEsPpupTzpd+RAZw+IIIMUvL9LsWHcXm1NI123yUuhPQtREI2hJq
	 v4J15n99bbwMifObEjelIJjPdhCHZQnZk8SHNQDyVfQFgfsNeUrcXgtMw/VGiGEig2
	 DVJHcbMHA9izssjtTKa2aKYtUEgAPYIrxd+z4ufCsfQht/oif7i9sodWUV7n966dF1
	 8Tkoni/n2eZiH134GvaQueeUwIJP2iRXSYuavWbq+0o/9qCntLrqYpKyl5PBhFHsTd
	 ry+sxwDXKjKGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982A4C28B27
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137933361.31022.10311094636813689058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61516a67e5af25bba0db9135622c960cf45d4986e82ffecc2966c028d5eaca2c
Date: Fri, 07 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741379333
