Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B9739658D
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790963435; cv=none; b=Kw37vjeNT38/nfvAecJFisPrBrgkjp6JwB4v+HtuHbXkFQ9SjkU8EKwnxd/UKC8h/VGc+qPprE1JHbcDU61FAeQXp5MSRazXpZZz4jExCmoy2EOkZHQsHCFtzrrgBcJwDbHOyqHjJUMcbs/S6TBqWixucB3kPo2jqJat4tQKUyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790963435; c=relaxed/simple;
	bh=CAcm/JE5pxkKGjHQZQan6IQxoLiP1lk+e+LhcyT4guA=;
	h=To:Subject:From:Message-Id:Date; b=E6njWxVp+3slEh/+D76owBqe0piSrrVx6LtXBAiVA7QV9k3DbpB3pIn/1Yh8Ovpa2MROFZxtQDnaM15PTG6dvpW7v8A+ODP/PZ1AG/3YHxHAGZ0NuTgNkXC/faMkA8QrXkSolXk7eSU5wALRoubV89i9T3Vzcdia5ECE659odvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhHxBhLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhHxBhLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA348C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790963433;
	bh=CAcm/JE5pxkKGjHQZQan6IQxoLiP1lk+e+LhcyT4guA=;
	h=To:Subject:From:Date:From;
	b=KhHxBhLOVbNFhPTwGJkedLgLEKn1zchEjtlImjHmEpEzDjMTXNmFXG86odHR9gzgD
	 5lPjwbvChG5V7zeju/DnzAlFqHrcDjMlnUOkj6bUHT5u3C5Xt4KmxWLJ+T2fhxcOra
	 eJQVOHP9w+wZb0c1pKvBqaW/aYJe9RwznddCp5E+D/LVDrtzarG2A4C+9ZLgcycPlF
	 x76EzuExTgSSzARFR7fJM9IdVMFe+6sZmH0CsXsT767Tc4/5OF/fkqJzQx3hcs8+vj
	 BmNDY68uuedoWHRRawtIhtAdmXWpEY6G7kOQxFKDqAf9razlwMZY79xU24Zw7WFXxd
	 N+2WZRa4a26HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971CCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096343368.2975.18130555865610122448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83de668c069035055080e69e07ff0bf08ce858c561557ce661b85adf56f2fb6
Date: Fri, 02 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790963433
