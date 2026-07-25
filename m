Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4565A625
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785011434; cv=none; b=kQ/ETJdrQmNv1/6jVSja66J0dKluuDYYdwPkTkxYfaDuyZNTU4HwvXAGQVnltwnhv1F4jhR4pWVW10zZ0EBbfV3WmZcvLT3zMb9IsrktZC7l7wca9cGHeueD52+It5dh6QG/oDUy57QEohbUa2ZWTjRXSB5CTZvjBP8r4t3p8Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785011434; c=relaxed/simple;
	bh=hDJrbFS1oSRADayFTE6mK+5dK73Bj2bcn33nnAr89S8=;
	h=To:Subject:From:Message-Id:Date; b=g1VK4Z3mAJmFhk1fXmXk0fEemI0ePBZHD1nZl2Q1GH4HODt95LtoJ5YitQyVFyAZc71wlD3wfpWE3w/s+9L4gAmf7j9BokS/8eEToHl4+i5YbalNv759HZWN0DwjMjLEzdWgA6RX24y33do7LyMCFQkb+vTves1EzOt3rZj3MvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1DFUaTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1DFUaTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DA2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785011433;
	bh=hDJrbFS1oSRADayFTE6mK+5dK73Bj2bcn33nnAr89S8=;
	h=To:Subject:From:Date:From;
	b=E1DFUaTHxYsKgD/oaGVeKEBdS9E2SONV1cC/eG8+8pF8zIF1DzG+A4a/6N1QvTTIL
	 bJx0Cg9/0ZBKvphwI6ynhqw+qF2mmQYyvsee6ptqt4N1tIOuv4LXDCgNP/L6Tz6bIa
	 Rw3ld9LLzcsgjZGrhpdPRSLeyqfHEKKtMgnD8o1TJhhuym+kAs7Hg2xPaVRgFroHue
	 Oz6Iezw4oa85ynLhK+svjMzNXavuxgQKXDUl0tfQfcISEFEzIavN0Szy6am8Zb9GDu
	 RSiuvew3Es7T2q04oUgo6RqvK7beMmZI0Zjh/3YBLANiY3FgP52nww74VN9r7ietmQ
	 ct36JyR5P5fLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD922C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501143368.18010.8007251320423518256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc396916b888e3c96028e727de0f12be36e035d1f65fa84f55ed5d8e1a5bcb8
Date: Sat, 25 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785011433
