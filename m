Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F59E17A31D
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746310794; cv=none; b=pJe3LvXh/uLZpCQ4cXy+Do03cbb8qEi9YVM8shDV9hwqKLb9ddwdCFaZH1HuZYvlyJmhnMH0chfsJYiX5QNDHeU9SI3FN7YAMGZzoAFqLpp9aWZ8dox5e9C++EjnVVvHQk/E7xLxg79DxGWDYhPSEn8z4yLDteT8L/z7yYnqd7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746310794; c=relaxed/simple;
	bh=SurFhudIORX48VZKZPhQ/ZcoA1SFHo20wFylN18a/7g=;
	h=To:Subject:From:Message-Id:Date; b=r0fLwICiZ9s3ak1JkrwnvhI0lZ4Mqf0plpFVcoabO0IHZPAvlbgB7zgtvfsyWMtS+PyCm26+wdEcnPZHkNsO+cdkWwtZ2DyCUvIaAWtD2kKcHkeB+gD+8ZLyJ/bjGZG23tDok8GikntJpYPXPvUicaKEuZEz//pU3v/64p97XBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+2Yufwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+2Yufwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A00C4CEE9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746310793;
	bh=SurFhudIORX48VZKZPhQ/ZcoA1SFHo20wFylN18a/7g=;
	h=To:Subject:From:Date:From;
	b=i+2YufwgaqgWI2TnEu+0bWHibWUjG+q0qFdMlxQKJiapWNUF7gjbhtlWfIrvsDqu0
	 efIe8wZOPjqK02nU5junrdLbusMi0TA/4FyE5UUNLFiJfLNPdIbdzky5OF+zR7vBve
	 2APSzRQRSueBq3FCRUeSQC/BVnkeiBhR93w0Uv2UtLQit5O0oAYW58VHIwuKCA4Shs
	 xx7zxM0JQe8s2UuZSqcCgLDzHNNQCIl9CHM2A4EGpSRfMBofjBPe7EWFq7QHw/RMsj
	 BkpJxoe6iTrESOr9D7PzAoweMepsTE/HKxmlkmZGQKQ9Q1ZIO7QvIB/Fnpq/TeyROs
	 DSrcKA+D+bTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1C4C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631079362.21735.15226216070550015650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe76a475b3ec4fa21941753e00c538ac781363e47b0a0aa69f0ffbcd2783880
Date: Sat, 03 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746310793
