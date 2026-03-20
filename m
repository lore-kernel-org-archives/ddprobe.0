Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259EC2E229F
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773977094; cv=none; b=jzxrH90yecfdpse9Up07P32e4m656WwzNwb/ER/Au/NlNO6ko/Kw8WSD118Qwxk5EdRCAd/PYYj2t7v2VbVRhHqIs0EUsHrGEKMh8Y9g75xsIFG8IaTPNA2HnKahCY1U1gRZ+ZHmGmPB9Dw5Q0hRerpHGjSHxZcg2sYlYbZ+RW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773977094; c=relaxed/simple;
	bh=4mu3eF8PZy6HJxR2N6oNJIgwVJjdJ06fYsnG6nQM+Gg=;
	h=To:Subject:From:Message-Id:Date; b=F7BTXcnqmnkzVVoJ06ordFJJ6UOKV3+tz2yad34hyzkuFU66fiQBSd2mD5Tu3cw8mIvLPnWYtt4OMThd0dN/dcOnPYojyvoDesRMYIByZyAgCYcn1ZRgCWBvglxfFvE9imdVpb3O4HOD/agGF4A7IcG/oC7NPyWZX1D8yNt8mGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCU1Nvyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCU1Nvyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94E8C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773977093;
	bh=4mu3eF8PZy6HJxR2N6oNJIgwVJjdJ06fYsnG6nQM+Gg=;
	h=To:Subject:From:Date:From;
	b=sCU1NvyuNoTBKOVcNAWpvlR9vti7rqlKCtm4BkIPCcKNuhMXWic12Ks7MMGxpdzBG
	 NNxh76f02wwHq60eDAOtBK8fo0EkjToQmL0OydQ2OxX223SjRlD9+lFa75UdaQ323f
	 peKBY5VGR3OGDs096lf9P1uwpW/UkwqHwEpaDu0ZN1tJuAPzRgSsAHs4thBh0cRlRG
	 majKX9In+FOhpGsdysluomyDLmu4ji8hKpQflfCTOEo5X0KMMHGOvEJnOlqs9DXL3W
	 G6Jqkt5xNkzPWSHmVT0ERQfjtEZbCVZWPv1ok4FpuWxvs0U2YFw7AJ2zMXFV5HLTTC
	 oBXkHFIy296Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EE01093168
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397709358.19483.1167182962649803613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c398dbf48c865a1dc60cdb677ef6aa8b732558bb2136a33ecbf772df79d29a99
Date: Fri, 20 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773977093
