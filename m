Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5211A4317D
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778124454; cv=none; b=R2TiuzcP5YkxKTlyIFKmmKRJKXt3qYFLQIY3f/upvgYTMhHb650CiQMTk0ZsxaZ/hB1glH0bW4CiFzdZJ7Y3sUrRi5Rux9VMBy3c6RvHlNdAHFzVtvQRY0fcEE4lt5ErzVzKktaBGWrWGqYv29iEgpQn7ezt6eV4m4+TOxH29/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778124454; c=relaxed/simple;
	bh=9h3FKi23RFuDdVmzZpZJfn8UXrwSthiQJ4jQbcAA+mo=;
	h=To:Subject:From:Message-Id:Date; b=h9Phxx1aLfRtOL1GOs8nijCWQHg0PcFhEBmRLmIEs8pvlMD4CIqCzSL4XVqTSsKVejCxGppYqMRRrn2FXw2gspE0wo6uDuo624HnFr3crZwPAHKNe4AVsOVlYiHA1FMOXVFk7R/Me6pYxDTPrq/R+EzE9gtdHmDYp3FZV/z8WJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4jiHEXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4jiHEXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32C3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778124453;
	bh=9h3FKi23RFuDdVmzZpZJfn8UXrwSthiQJ4jQbcAA+mo=;
	h=To:Subject:From:Date:From;
	b=P4jiHEXWSwicneZFhhEKSatJUhDoApZuRiuQVOVtWhIVL6yy/6umeZ3teNczbamVi
	 B3JbncEalDjwzxBQVDcAzEcFj3dWGZefuSILjf0hAXVhemd+XW1yZwhedz+zUk47sm
	 ycmR4z8AptsHqfZfsTiouBcbjf+u5UDeOzjLKDxTlTqVjzHStX1+THVa378qpDi7Ft
	 pzu71GzrJ5YxRMyfE5FbW7wLr0EEbsJPZ3wnTNncLe0K0DbjP2vCjgVFT9hvD2Gpgd
	 vv35csiUdEeVilyu/HazcmVvPT0c2H2HTf/RdAmnzB8vkZhayr9Ix6HD/ITX3E2HDp
	 7fy7s/ki2TKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0630CD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812445368.10958.946726889617002300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ea95b3187dfba02a9b3933bee64072b5baa8cfd52b236e14e7de8a40a54edb
Date: Thu, 07 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778124453
