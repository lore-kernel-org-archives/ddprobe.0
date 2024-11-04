Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F8870816
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730756154; cv=none; b=L71RV1GPPKwVrPeiUEXyG+A0h8k6xlifU2e00Xmys+wS97fs+yo7MzE/yKUYOaMwUOrpY+qdwQ8j1eN4crXn2b4rQQU9n/Zj5iLZCW55JIP5MdZVLAP/VYpdOgtOVOjLByNw3/PxfZO2XUz0jFdTfz5laqx1qdor2o6fuBwGda4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730756154; c=relaxed/simple;
	bh=AVhQWaiGbK6ZRTB7dsEC5HtXxa+tUFbvToRV7Wzx1+Y=;
	h=To:Subject:From:Message-Id:Date; b=lER8pfP42Z2lnZV7l9lZ5oeuAQAopz44SDW7r1jTmJfyM8dKD4KSuP6RgNVIO0VX1iw4EhZx5zCYMlPejU88hBIC70AHoW+a7cYhH7Hw4hZMEgAEliRg6lhJPUC8IvH8wUVcUj4ANbDUIPvmn0S29Mwykan7/vPtalbNTeFw6ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sy6zJd4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sy6zJd4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C6C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730756153;
	bh=AVhQWaiGbK6ZRTB7dsEC5HtXxa+tUFbvToRV7Wzx1+Y=;
	h=To:Subject:From:Date:From;
	b=sy6zJd4N9lvsBKAPA0iiJrQRtiI7cNiJXegnRXCz4AJN+Z8RrUIyYOGFr8mv499lP
	 sUi8qV1mjsyTIX+qW9ap3JnEP5SNEZs7z/BGzu55NLcZl5l7gdoGnSS3WynnmIJEii
	 5Sp6Ve8LbP68cayTVueH0/0CuAN4M8w9Q3fGPlJE5e2S2lmhm/srIJ7+kvxRHmWb6I
	 +xaXPyUUvc/YZrCE5Po4i4hAcetAKzWmGFzafZXhSOLr5qnzJFnOKzXIifTep2VFqN
	 ppgTXcrXtW3iz+3wCZOsCB1ier/q+67kP4R7H0eU1+kpS9rw5UWMQXKbRUxE3qNDbn
	 cN+Wn5Or285cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91785D1BDF7
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173075615358.30849.8510652517402691735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fac838ff7ae529dcf4ea038615576c0001da76a35c2afc7ba6692ec05873df
Date: Mon, 04 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730756153
