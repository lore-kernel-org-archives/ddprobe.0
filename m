Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001075FB86
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707841097; cv=none; b=WsV4RcxjdRLsUNEj8pgkiL30ALWNfoDLdVyvM4vxqVLE1U7tCgEcm7r/nB5pJvRoZMd7R8Kg0jQZeYFaIhhYac43rPyigB/0NV9ImXe/GskWxS2WioJkP4I+Qejc2lSkUDA2Z5kPkqJCVBBowZllppE1vMRsH5CR5PkXMoujrOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707841097; c=relaxed/simple;
	bh=iU3J3ezQ9N9wQfYLMGjQpr90iZFSjAZOW7WSJZzVzOk=;
	h=To:Subject:From:Message-Id:Date; b=iDrgQuHnsyJHi758G4TaS5e6c3/++Y+U648w1WbdEzmrT4EpmL+diLO2o6oXHOwNjlQfYROrLuxYxeyxkDiFSptYEd2gTsI4lVVeXvS8noKfXBg1wkMVFVYUi9jTng8t3lvr7yRf/TqDwEdABYqZNhFv2IFyHjlA16LQm/o+dkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZPVCLFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZPVCLFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75428C433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707841096;
	bh=iU3J3ezQ9N9wQfYLMGjQpr90iZFSjAZOW7WSJZzVzOk=;
	h=To:Subject:From:Date:From;
	b=MZPVCLFPeoMN/AOC7gmqb3lPjIn4rwhLHEsxM+o2VqJXeFyVxtOOfjx5sXbxB4MGz
	 HAYePQgYw4XIsd8s2wrY4soxvlKz24u9s3cbPeRf/M6QZ4aAUxEF4kB/oshaxR78AK
	 S0oO1OUciOjCo4XW7YVD5h6GuRRw3P0qqGrZro2+W7z1AvcfMf6qu+kWE/rWRSazLo
	 bQ7RZuGoYSU18Euba+/bwzxZwxs4zv7vapMRyu24Rvsbt9aptIqpDjatiDQ7oQxNZ9
	 7w+UbucUClPR2tdw4LTyDVgRjAxTB9M81cHZK3656yFZ1rmxUf57JvTbuDA9RroPQW
	 QXBqTznywfBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D91AC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170784109637.13293.14068509511087963806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6922ea0489d15046589b11f4d640d2207f3a74a19c4e4d762bc3c4d5debeb2a
Date: Tue, 13 Feb 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707841096
