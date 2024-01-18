Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D84208AD
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705571297; cv=none; b=JV6mcfWS1jTUKV+mcqUbqfVQMeATHkb6I6fdtOWWzv6HpdZMhZ/XeKoTHQXVkcFyYiNdKMC9r3M636uAiUmO3rz/4p/BA0W17hP2yxA8J3ar6m9Nmrqe7wHHpS6XSuyLjfVX6WlMl1xoGSqKgO+M2oecMY03O8C33W7h9ImpebY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705571297; c=relaxed/simple;
	bh=kxRYARfZ9LLGf1cVi0fuZ+Ud5qRbrUQuWC/lUsNA++4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=RirDMmM+UBH0h+FEGXKLWELlhc3eiybKO2Bo6GvS/60uMFOGz14OZRiwtUg5pfbBCuoDqZHIHVEHvgnAUgu+7io5g8xMERSOcdjXqZDomm8kecvWzZB6NJd2slPlV7VFsqV3b2TBKc/EMqUdvSnQT12F8qGHHsCCedQW1Q5YCdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mezNTZEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mezNTZEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79754C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705571296;
	bh=kxRYARfZ9LLGf1cVi0fuZ+Ud5qRbrUQuWC/lUsNA++4=;
	h=To:Subject:From:Date:From;
	b=mezNTZEspru+NcMp/A49Y5kW0KmIpjoIKQsh5ur5KZhCrp4KTgXs4tpItfRY0oDdy
	 vv+FTWh6mlgBYHKohVv0ofPXzKKv3bAE9PaIxO/7z0/tBo2HoV/W6X95LsbAVf6ZZs
	 6rJhaqmLxNFBSSkvrUllX0B4wa5BbwCJkOQ9qgNHerqggEHVkyY1ATZ2S3GQRSutsh
	 e71+OtWC2Cxqriv5t5H/tFAKHvLWDUWPzWbd7Wzrm8UX06rCWLHQIU+w601YHvaXeY
	 Iaa59ad48VenjyoBFFkwWeflFtnrxRXzLz222Ua3tLSES9FgDEQVeyzPQu/JyKS+KG
	 n/y8xWQM6KF6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60403C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170557129638.32089.14160230836634686102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9d2394382511d9dbe385d750244e51ed7238eaa47a9497726cd6bad686eea9
Date: Thu, 18 Jan 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705571296
