Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52082547043
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791427234; cv=none; b=tjCP9cPHUgAXh/SOCgfndlshnd10URUm7URiVuqtgK4qBiHnjDELy75Iutr7zQRH7XfRC9a4MXdp/Uoqb1O3UO1uvOEdjxdSTFgUANbfQK4kvPBb1CUj8DJcHO1P+WvTM7EjuJpPs+kkL6zSF2GejnacG+Th3IVaYq75KQQBCDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791427234; c=relaxed/simple;
	bh=9NVljlWBinMKQusZyl3tWlYSZKidjP4h4qdxx9VB9/c=;
	h=To:Subject:From:Message-Id:Date; b=InnEBZFVKUxNDoxIr6RHAL9nLVej6PxksS41JrmZJwyDPzyEqsHSqiN5jT5nZIaUnbhtHUQ0JQx6hW6pTGlJTY73Y3RlWfpb0qopkIWQ3RlAsozYf9hhVtMGJhndeGSUqlPQgfZvQ0W9FtGr8B1aWbXwiEytQS8b9kKdHS37tZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9pD01Cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9pD01Cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF028C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791427233;
	bh=9NVljlWBinMKQusZyl3tWlYSZKidjP4h4qdxx9VB9/c=;
	h=To:Subject:From:Date:From;
	b=U9pD01CjUObdIH2KD4XGvGmXirwhPHZKra38ccn0yPd05xaWp49gozNYh2GTJzqTK
	 BEy6aOuTKYsV8UTtxIdny6goCHl5U2K3Svw9U2FRiQrcVb05sndtVS5DJVtmhU4SmD
	 y26rUhlGwxIMuG7XLrBvCsvlMa9pZ+O0RdUNp0BlYP7s77R/raBMjEkED8kdBqE3Dt
	 PQPSKnuWBdl1tIoUtsISrRdwhBs0thsXzsjsW2cNPZoYSXhbERSyOt4/lsDbiDSZ+o
	 A+YjWx5vZOlkgMXFt1+FyHW8aXYuDtXT8S5KZOMoHTZQYJv0/YKfmFljkbzv3jdLRY
	 Enihs4mN0YvKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3687CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142723369.17195.2226687331200661315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63b844d051425c4f545876fbcd40dde8d6603adf77da11bda0fe9cb96352345
Date: Thu, 08 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791427233
