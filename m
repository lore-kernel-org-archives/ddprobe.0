Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7E91F949
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738632954; cv=none; b=FKXZkCX11/02xyWmzygaOWUmO9wprV68SRq2L/CxIXSyNOm7EuAXhNQPwm6N4/J8CSuuGsZY7M+uzfGQYd2lOTcOcRKkuMExjhVn9KCiPUASPNdtD+Pqv26S62CHCOMSHNjeEMV4SOu/Bm4vWOFnxuQ3c7ClfmZAFQqFC231mxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738632954; c=relaxed/simple;
	bh=IeR/AV9dpTFpq5RyN7/ao0vY6952FbUuf+N9aCS/GRs=;
	h=To:Subject:From:Message-Id:Date; b=uFq7SKT7s+6I7LqBzqDryoSTuOWTrWPpeCv1LpU9UFx9DRSfmHOTK3H7iBOoKforddadY6+TaxdmF96flUlircP1kX6hCm236y0dp0swC8nJkjP56gAPyumkBcYsDVRDAiOm8YdzSRk/xA4o2/BoQ85SLtQllTS5XEjdAiUQeIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EG28qp6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EG28qp6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5AAC4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738632953;
	bh=IeR/AV9dpTFpq5RyN7/ao0vY6952FbUuf+N9aCS/GRs=;
	h=To:Subject:From:Date:From;
	b=EG28qp6STcIwZLfXUub6jL4aFbvIttKYX/7Y3oraTGVpomHlLUk/HwiMnGjra8KNh
	 Sb7DJ60HzfAt71leNvqU3LwVnj2sQ8StUdiL1kuwkzbsTafOhP392M1o49hUWB8hUZ
	 eTWCegnKvtMoyZSXwF+uRDPe2fQ83JxI+RtGl9m4AChIlfabFRzz4RdhWnoJhtnqzT
	 viOn9yuUr3KI3W3AOM2pA2CuXq+JKijlSSXML2xhe67YEl61WsGs+8DCfC/gwJ7DmO
	 mOLScVPuvhSfWPRcT15iLczoAhNkXpBKIaP320LljeU+wpnylwhzhVqfNCgvWcifZm
	 RDw4ddL8vWLTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D64C02192
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173863295360.11176.7714956350229555979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beca07eb0571c79da8bec4361dd633315faa25b13260dc03dbc10caed705881a
Date: Tue, 04 Feb 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738632953
