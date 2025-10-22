Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2855C266584
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761122994; cv=none; b=ZCy4j86qyyrjObHe8jyAsibFbs1bDWIC3Nwps+3tZNuofEg0opOLhEd2wgR+kr37hFq8KTF5ItGyr8OaClK8kRdd6GPTTvDITFlX/XzbonG0ArkrgLqxwMUEK+hEt/N0j90zI7IE3UE0v5BrP7EMDM2/8wNkFxNLnRJUR2jYAkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761122994; c=relaxed/simple;
	bh=3d5igKmLtjPb6sOZ0+uNIxXHZm6+soqHm9cHyUu/arQ=;
	h=To:Subject:From:Message-Id:Date; b=jP2u6lrpmaimTus9STQYmzpJLFZFva7eJVCNkw3GA3Lyir1s3fKghEZmUL/djke8YAM1NuXdeWzBo+wkcCI1REK63jxZmoEBDUFVoWj2kTfIb/Ef7mHOUWQeRTl0YLWEhw01tfG+yaQCHM4R5GMFxlrJEGo7++DkGXbF/zm/tks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTr0PNts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTr0PNts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E255C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761122993;
	bh=3d5igKmLtjPb6sOZ0+uNIxXHZm6+soqHm9cHyUu/arQ=;
	h=To:Subject:From:Date:From;
	b=uTr0PNtsJ7pCuX8asDiRg3OXXtpjVoFhuOQIRa5Tkk7rB3SSVdcJDBmv2sXfB8w9O
	 ifq2jBeSZyH1rKpxM+gQ/hlaPV9U5me5n+iDuk36YOWNNj6fqtTjF8eI5b3jeNMhhT
	 9GWjVwr1G9PHbge8CWlS6nRJ72HUu9H656oBlCjyDGi9SFjbiAfda/viKRW+APGmXt
	 lJBIz3JECFPzhm+NZNgBgZbW3A526886tsZ0eHnZU6S6YuqYlHxdBRjWgG4DjFbylq
	 vLvfH6PSwbHNk0Sk4kvHU6MYUzo2cgRDD9nI+26NBNZIOoq0BXKSEipoSSySa1EWsc
	 EWU98SUlOJa/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F984CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112299358.8364.13419885448220850357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06552083f9d84874450313baeb897655eb906925a3b0ed7bfa5f49ff2d7104c5
Date: Wed, 22 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761122993
