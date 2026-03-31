Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097B93644D5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774994094; cv=none; b=iTCSo+EahTAVzWg0lKzvODCc62lvDaozDKZugyzwLuQIyw0ShRByXHMoomXfATRYo1Y4Ar5JYiX3Z+IJcsrg4azPRX8Fn40LU+yBvZ1yuzOEsGlQ0Y8jb0WjeHejSLznc6UatOoiaXny6/Y8/q91nblneG4UD9PRnWAG5MWLF6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774994094; c=relaxed/simple;
	bh=TN/aR+nzqf904ocMcuG1DxfRd3QfaeXQqpFVIeltV4M=;
	h=To:Subject:From:Message-Id:Date; b=AqEnBCrmXo+p6si/0q+j6vLwcOoY5EM2Eft27Dhz6yP61xSeWQWmY8v1/vbv/B/kodfyoslFoerKuldgw1o5l4l749eCtm62eNfBLsWGkLI3Ho5UvmO5ZEGO1tqe9DSr12vseb+Z7vsqP5+Z4oCDgWhMCNh0KcABqT2MVEAsuJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrTn/oRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrTn/oRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AF6C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774994093;
	bh=TN/aR+nzqf904ocMcuG1DxfRd3QfaeXQqpFVIeltV4M=;
	h=To:Subject:From:Date:From;
	b=ZrTn/oRmP/4f20BiLBZtgno/o2E0gVkJf/w9HERy1oFpd9Mhea2OulDqXhVJJNXc/
	 FI2k+NZFO3xvb0/GMN5piymCgie/ZupiNb4zCYme/IRcajlbqF9Pe3EQK3iE+lX/4p
	 3GBr0RtI5F7eXcqh05EB1ZCyd2DV7HrFfPB82Vte/lx4bssTQIW+2Zmwh90iZIL3bZ
	 5kPx4xXajE5GuhFQ63QEqy7HtIsXm7267+3U++oYOxzAEIizRKIwLn7WBzvWJ7E2gW
	 aDjfV/7MvDdJaCdpN3ZE6GZxkzBmZoXNtO0xXgqd8BjUCdtn6be9Ev5SXCIwq3C2sm
	 Hn207IOWcLD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324A10F9302
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499409358.1146.11352289343927127175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb0e38d9137300f8d8dde073d40d86435fefbeb43eef7863f158904540dab2f
Date: Tue, 31 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774994093
