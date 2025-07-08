Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB461E2614
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752016794; cv=none; b=Lzkdrw6QV/m3xgOHRxb4u+Vzlsp0P0l563TuWvVdtnTETL46aK2xIzFI3qa5cAtc8+RsHZCEKcNY+orrAtEe8+MHz4rhNDQ5kFCZBJSC4unOu842KAx009lROngR7T+VePocsZv915u8IOHPGEjvay+fuwYidVr8kRUHL4F1ios=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752016794; c=relaxed/simple;
	bh=/Nf9d1rY+ShVJc1DgaYfLvyca/T/iz4yen/ivvuO66Q=;
	h=To:Subject:From:Message-Id:Date; b=PB7HP+p+vaHoCcxmU7R3Mm9suURJmQNRM5gXlaCuDa//9vvPD1lj0/pUXFXWvo1V4NxTgsXkSnZJGdwS9k/noF0cKDp9Hd+EXp//3BloOn0IgZGHozahe5ihuPmZDKds0rwpZUULdeJjx+1o1wkIFpaQyjunpxZkmTCrYAeOw8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bG9cu4HK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bG9cu4HK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D2C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752016793;
	bh=/Nf9d1rY+ShVJc1DgaYfLvyca/T/iz4yen/ivvuO66Q=;
	h=To:Subject:From:Date:From;
	b=bG9cu4HKaai+rN2ICq5JTyUxLughsE7oOufjBvlylir7ojmWVWWaltAuXlo3R2aF3
	 thmhlHx2fxuAgPlh0k7uU60AXHNPYkwfkkbNc0WEoRPgDD30AURL6HBJgZlNcmm9fe
	 7tLTmXbNXunM6OHW5MUGENPoHRmpn4m7xcEUfm/CdShjyj8WhFwTgGQNd76EIAGv6N
	 XZMIVqcLzifXeFniC/ZecDCBLmi1/X5YuN388p8asT6fkL4Nwwy03Moc/ikLLOe/t4
	 tt06LhWxlAZjgvrk1cIvigvi2B6kuLkizUDW43S3fY9L3PzuuhAnhM/29fvFpj5e5+
	 f73CAjDo7k/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D3C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201679358.5831.11153714804356915296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d23deb9a48c96437cd21bfcb79675a416d47ebb97755644f85ed0ff2bb6dfe
Date: Tue, 08 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752016793
