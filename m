Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C923E28BA83
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757978993; cv=none; b=LctEIZA+xoTXNYg2awIF51MIH37DVdS2xD1AL93idBUr5vFgri0nVX6/yNgbFzWbTxiO8gJSde/No13ugOsNwP42vDWYMM+zddy7vfUy3PnZvf/I9RJwhKhiRaF154Coq0UHXcDApvA26O35FfQ5IsnH8ykbIxTsshG4yBSkF+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757978993; c=relaxed/simple;
	bh=ePxDI0/+sKoNfkeX1C96A7xF+yRUEjBIbEri4BDGM54=;
	h=To:Subject:From:Message-Id:Date; b=QQzm+/tl0w8FyQ9UeVolG4Z8tFClwGstMAkvuO7OtAQ4Rm4zL441/36u/9NbDJs8Pjt1tA1NYGZFe/DeuKNi0+QfM849Cm7xlcSUa+Cyoz4ZfkRKUf9PEvD8HFS2tvf3uy/N23l6H1yFDm9bHt1TxCV0G8o//beZK4mXoBbV/2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8Xd75Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8Xd75Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A282FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757978993;
	bh=ePxDI0/+sKoNfkeX1C96A7xF+yRUEjBIbEri4BDGM54=;
	h=To:Subject:From:Date:From;
	b=I8Xd75Pab1GaHP3fhZ7+I/nokJtlEdIVicCwG1STicLeIhL0rz0iTOtoqMLfAnvaW
	 B9aVq0l82XZSz4IQXJOfxdkyjuMYZ2kvDPS7YLd7GK8rBa/rrbzeD37rDPHVTgexCj
	 Sj+aNzJLI++VMq/4vJLyS9q1rYKmXI8Nlt+15vwzQLIMM+b230BUa9g6gvWiJGRNep
	 bWdE9CSANXJca27eYCW6q7DpX64Mo7GTEoSMlGZnKQdiRwavDNxPK+7c3ySrQ7MuV+
	 De4lpWael1nrmzneXVgbw9q9S3M9d8v25wC+edcgBm3h7z+tUolV9zXCD1At60ba/s
	 jFKzqdR9tIvpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354FCAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797899359.19082.6553292176545034206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904b6576964473454f1af1b46c1a45915cc857893afbd1ce5d7624c90a00ea7c
Date: Mon, 15 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757978993
