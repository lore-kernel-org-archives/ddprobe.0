Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C233175AD
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726427154; cv=none; b=I+U4h0Np7ooRqzRXwuRY0eY8a59B6T829VTRCXZg1KhasKDzLCSfwa90RT1fYH8qqU8Li1Xri3UuN8GpIaHg04JzEf3aBjuVOdqVMSy2olmKoGp1cgxpoLEU2rVbGc7TU1w/ZLOaXYE5pJd+Z5dZpm505BVYacuVFYxynXYE70U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726427154; c=relaxed/simple;
	bh=hWmvjhNCN1xMoqXCRlfJm18kVVUAYlvoxQ3ZbbuS7ks=;
	h=To:Subject:From:Message-Id:Date; b=Rvbgm+669VSN8N1NnvauhKNWpEcsZOmBCl9pl+uP1lKihPjZFRK0MXcUIxDHNih4eRniSSIL3B5a4rGJbxr/2ZxHR9Mftgb+i5GbLmzLVMODgbFEE8IaIX7PBjzsBLohaH1OYs+t/Xc5/TqiqLjZZXS4YLBZJaIMzCjqjJkgU+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz/Orb54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz/Orb54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A744AC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726427153;
	bh=hWmvjhNCN1xMoqXCRlfJm18kVVUAYlvoxQ3ZbbuS7ks=;
	h=To:Subject:From:Date:From;
	b=Uz/Orb54EQb+F+OCB3H8gy7ot+47hONnjB//XI3NFSOLrRmQIUA4iRBIrIERWyMNG
	 Q2QwYskTQukPP7bzD4nS7pwJcNBhuhmbgqN7CpUME7UgStHWZ8Vt7n4dW+4MR4/lbV
	 LmNmAsG/j2eMaiQgN7mxgUBXx/jaiqh4z+Vyf+9Z5KDrkfHCcNqMsO4vkQIcBJN/1F
	 MeK3HAaElQPL0OnCdOqyvfz/xyl+LoRIEdK653GkQPKllSTmzwzIFfv2GRyMGgFPnd
	 4oSvVAnoCfmW+1LsoBqnPE1oeprHWEQu72qpkdDMLhuanABBfcRV4MyVMCnxZ+CMFO
	 zdmPnPGwMal0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94263C3ABA3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642715359.30702.14234765526662937613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13f37d72e16c72782a8c109641a69403f6e590b6df0fc1d8d595b45f9c52e58
Date: Sun, 15 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726427153
