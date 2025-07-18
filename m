Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309F92D9ED2
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752842395; cv=none; b=Wybz7iWZY5zwDqTgoBNawpHyLrQ/r6mcDST3R6l6osxkiJ9B5M1yblmIwrThyJgwKh5HF9VsnsmNpw4PtpUMjde4qvKRwde4BcVqOPECi1Jky/1wIB82UBXtZvB71700o0Hz9IcM5fA/yrN9QBcu3Ds6jgkbV5/jKmNjR8iM/2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752842395; c=relaxed/simple;
	bh=fplqxNJ5AqkmvmpPVTDW82jbZ3TPK1aBIcvg7kFW68U=;
	h=To:Subject:From:Message-Id:Date; b=pc75NDUIri8elD1cXIOB3PwBMycEkTpCq3qBirqbotvENFNHUcOO1rKmDPxqOOFmZh/6q1JO6jJwTPG9fTC5lJzQu+ONDJNj61YldjSY/zFASnDX3ZNH24jS+p8YjDMLzP12puoWfAmQQpSIaViqSgUZ1Q7YLaooas6xB0G1kk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdvfMNJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdvfMNJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752842393;
	bh=fplqxNJ5AqkmvmpPVTDW82jbZ3TPK1aBIcvg7kFW68U=;
	h=To:Subject:From:Date:From;
	b=BdvfMNJA8pAvTTQgqct+emrbe7dmsLFjyFavzXoM9cokUmwS+b45Dy5sh1iMKFhA7
	 E1k09l1Sxw0bKv7AeIgzzftM/f0C74jllfw/dKLnHIDfPElgvMprn3H6zfcSjuegjq
	 yzL3WuQ3IZMgfAjjxWyhsSJE6XljG+gn8+ZE63vqHe5oxmzXiQiVVnBaApVPy75Nal
	 QXggq1alivz1kD21u3I9kzR/YRobLi2gbqEpYCuVhB5QoB1IGcJy3cuxvYR+XJ5rDq
	 EnpPh4p7lutzMh4smc6rnn06SI/DUxGsRR8d5ANOe+sf4QPD/HdYqOgIwaqoZ+w6NF
	 FEWufWzZTkMkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944ACC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284239357.7297.6639516520074803197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fa7c3735a2efb3ff4d95f1a0903381b5fabf8b4c0b412bb914d4d4d629c902
Date: Fri, 18 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752842393
