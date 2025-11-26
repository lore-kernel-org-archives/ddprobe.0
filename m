Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FED7625
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764138774; cv=none; b=ZlDO6VBqjeo3J9dFpUFZ0pT+8aFchwrsBuiHipLevJKIx/JjsjG/9t1QTH49L0i/n8NZg4dS3NWUm27fFUtELcivzSrgvpBD23RjU1zMp6xDHNBfLPEgXhr9SY6B6b7J4ftqnQA+V0TICOwKyEkAChnZ2F0sQtDoew/UW1MWzis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764138774; c=relaxed/simple;
	bh=m+Z+r5cW2OJszP7cIlT2/ClEXvYsBuYv0IlOema3jj4=;
	h=To:Subject:From:Message-Id:Date; b=Axwf9Gfh9plCJQHbi1nrNUBM5tlGFxp1gPOj4owZhyjXZ6O9uuC/q900n8TfqnP+8RCNF+K8/D6cn8rKaZz+HY6Y77tR5LD6KhhDLbS04VoRFfMV9tOWZCHQH6rVtemUXi0RW22cLTNdZvYHwjR9xEdcHetoSM3L1so5Yt+RmNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mE1uT0Gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mE1uT0Gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B341EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764138773;
	bh=m+Z+r5cW2OJszP7cIlT2/ClEXvYsBuYv0IlOema3jj4=;
	h=To:Subject:From:Date:From;
	b=mE1uT0GsdWCDq27JjbbUyrOivVls47zKkOklaKPNXmRwTd8/sldEjMns6ECx7vK9U
	 eoZQaOHvNSvXqvc9cItuklllxahn7qGwcT2hZOj0W6srNHQYobDXPV2wJ+P73Bvp5f
	 0MGrgi7QudlEatAz7+QO0wi5XlVWQcFhfMVznExqEfbU3ZirVfFlf3y+VAolioMd94
	 IJSUj8UPIPutCg/VFgYfL6C04pzVzKLlp+ry+tw6gow3pOvL3ivdyJupt8p2zqYex3
	 ceC/kFoKczq+w8CaROvDbJodnZLJ+tYT6n5iIhZPG2FpIqLKj7mGQBqtjaCeNLpOXI
	 wVNGLPfth9ICA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF26D0EE29
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413877360.11094.11202305384128371227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2a3af0117428c2ea877961f5a16e7a3e2a9058799eb4c50dcd6a1b37b2f3f9
Date: Wed, 26 Nov 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764138773
