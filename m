Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA9D1E5B64
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749140394; cv=none; b=gQWr2HOZ6YpJJP2/Wt0KkNfiwJ2QVBeMuqxblAjvanszw2fWdQ3ZZdhc3eCc4lwZ1xm7nadtVlwqJtG3+u6LRlnz+uaxCQW/I595w/QHHxc6x/dm3XQzvT4izKf0C4ffoBjtbyhmcvxYTV4mbu01dIvOBzmi2kXRfE2K0QBvjCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749140394; c=relaxed/simple;
	bh=XBl4BH3mUAxJ3vhPfAyM7loQpe+LV2IGF0SFOMKX29k=;
	h=To:Subject:From:Message-Id:Date; b=vFB7ix2gKgEEXADX99HoID5RcmDGgUstX0Y4+iNGxGBsJvy7IBGwdV2q/P01Q7e5mWzv498kxjgyq12nnuidLdbAS90hTv1LbCSqRTr/M3hNAPU7QJ9QRG07dUvgB98h6/0c+M+vmxAztOLMeC32D2km0/cqm03S5qATOAOThxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scDDVa0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scDDVa0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749140393;
	bh=XBl4BH3mUAxJ3vhPfAyM7loQpe+LV2IGF0SFOMKX29k=;
	h=To:Subject:From:Date:From;
	b=scDDVa0scp142ojmoJIlhRYY9nCjJUprnlmyyshYB47b6jJrV8OyJF6/1JE5KaFlt
	 EfbXgtDk3U1G4jguqG2ZZD0l3UOMJVky2JmrZwjNU04ut7mzYPgFtMzdbmsSN/+3pd
	 wU2ZlWfkqR+p/9KeaJOpaSiTqnpDpX9IhyEibhev+3H+q/p6+QjpqEKWknLuyXyJL7
	 g/yso8pSLCIJc6+RbVSa6YYQt/eRFVA7WG/81SgEGUT2vxeefL2dRHV9An7j6NkU5I
	 im+oIeDqPqeu2MzSgLqHTew+4PfWi2Lp7cZoqfr46pz01d+4gRJgmWMU6FktE6gPDf
	 /Xy+OFJFn8FKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90192C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914039358.27838.8058996759869822240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebabf24497b496205d5b0cd1470bbbe7edc1dbc436371d6e10309cbbb805c4e5
Date: Thu, 05 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749140393
