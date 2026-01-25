Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCEC27A907
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769346834; cv=none; b=J0AGqGKcF9hclSE9EZu9X50i6//ZKkthqh4kETwHo1JwdIX1KKCVoeZqxjjlYh/adiPiEQPwkX6fr+DCJuw7zezByzmVZUEscIP7xrvRCpHN1CMX95yugIP4yVcJUqDq6vmjepoGtGyArWIw5l1gXnzrXpRMwq17cZfkcEqkETk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769346834; c=relaxed/simple;
	bh=jBNaYO7IllAPjK5JgALfWE1VGv6yL3+2/Lu6wrwATuY=;
	h=To:Subject:From:Message-Id:Date; b=JTS5h3o5yhJ9YQ8WgiXlH7gJd0LVdCJ//ydxgjuSK8cbEWe03sl462TQkNWb61ca+DQ7u1vQXESfQGlbQKrYEv9F0SK2oKhWUfWc9i0uEUh3egCbGMYUW+EkV7XvWOMT2MwlX28ybEGHlYWKabos+w63nZaox0YMwG5h1Pbiqpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaFR6jJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaFR6jJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00FBC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769346833;
	bh=jBNaYO7IllAPjK5JgALfWE1VGv6yL3+2/Lu6wrwATuY=;
	h=To:Subject:From:Date:From;
	b=YaFR6jJER2CsjU7m6L3CxxXnmDnIo9+/SuurZiixl9JLA8vpRAY3+OFHUTKZYgl7H
	 ZLSa7L68B5hjBrYKNOJTMTAM/WyoeAOrtgtrtUa0n91QtRhfXAA7Xzg/5p3ykKzsyD
	 96hyWz+crjh7sJQzW184pFIAnnKJ3r7Rz5ExL2dIhd3oYHV5SJarsaeWKXN7H+4Gjk
	 lyxD8aSv5nly2zCVmhZiIJJ0P96hP5oKXDN1wMO4DyanXRFwCb5iaUNJZnj5hLv+yr
	 mqTgYeBGxLLeZYeX8GX999u7vH2zakKsk0UKe863n9aSMhjrSoJaWv1C9PM2xN2Zyo
	 KUlAfSfrI91kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EFE63C8E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934683358.29527.8300026699825552986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce25825d5901ea81540d5bdc4180420eeaa5f35ed408b46c3ba38d7c2d1eb59
Date: Sun, 25 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769346833
