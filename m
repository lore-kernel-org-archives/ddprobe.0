Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ACD4A2C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722143754; cv=none; b=kys0uZfq6/IaVBUdtf4tzhsW17mmeAj/rhAt+TmnP47GsrylVfu20QGKsX0wDB1dYwpZ2TfMa6yy4mfB8Mh6FsTwTuLPG69mVqBciWLyOLAMrSx0f/44iWOPfPn+YA4vUSiDRvlpjM72V3mO7YK+zP5/4EpBh4kvrikMrNZSWvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722143754; c=relaxed/simple;
	bh=ES/MlGIlF3GZACQ5IywGyWVkm13bX/h/lUR+daObOAg=;
	h=To:Subject:From:Message-Id:Date; b=R+sFxfJv2BZl1+0IQyDFiwnxN1QNw1HBiBsGE8xuw4yhcy0HCclBgA4QiLfkOj6BmiQsbtUnD+aLHRxZtXFNq4iJizZhnZsxoidGl6OlS54Y4pI96+bm/7nvX7c7of4/rUJkNqc7r+yoIxgSNtvCUjsDaTiPRav6YkmnRkFvoUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv9C2gdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xv9C2gdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBF9C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722143753;
	bh=ES/MlGIlF3GZACQ5IywGyWVkm13bX/h/lUR+daObOAg=;
	h=To:Subject:From:Date:From;
	b=Xv9C2gdhZtRH4Vpwv6dp/1sOlcEsauaVgTN6a916mcWWwzAsI4SDESkgBZy+VRyqq
	 TG6BX8AFdSyJx6I7wmRrPtqPrWu5ijzRNt33k6XHZrM2DeeSCCMkT7+RfmV+BVEpCy
	 bnFvOuiwXTn1ywPunojNss9ljalXsBtJ+rg7Bx4T6s2fGgT958AU5PbKadcTXsJsJz
	 w9/wUaVfV8xCYlXLYlSUCGEfg0vFQFfuBPbiBenHEUP0yk85JNaVF48lfIM2aI+kTq
	 TLRUtGw9RLCkZ77/bocdvIO4gEiaDLUvjkJT3kA0JNkYamrgc3edCBk2OAZFzu1Ohp
	 8G5lG3l9y8iMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99366C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172214375359.28014.1011191472682744787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ac1947e958df168418b67c6cef7c8f4d79a567bab41d77543fba888e546bff
Date: Sun, 28 Jul 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722143753
