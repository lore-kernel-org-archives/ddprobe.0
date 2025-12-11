Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD49946C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765414374; cv=none; b=mtZQ4odtltjuII8vuPi/0waH1RClzOfEuhUdjp8qqd/6ZDCGfljqYMOlfko58dgzXC0bzeyNSvyL0D5iHCHZuehhjdXXK48OoFvEqwTQHE/KnPY2RjmicApV1Ef0lXFH6edpZJ47ZyEl44infQeXacvrDL/AZwtJyV+cQTHn4FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765414374; c=relaxed/simple;
	bh=/KSI8lDKH8/zZJGObtfm9BdRUDWrsl7S7TI/EHbYB74=;
	h=To:Subject:From:Message-Id:Date; b=FaYmsyJuIx759o6lv98Avcd5hORFHehLtHrJT2X+/tTQTbXSJXpXkhR15Zr1Py3jNLbdf4Y9rSDo32Rk3najNVMrU6SJVNYkBjiQqs0YGcC6yZuSrdcM/kj2y3/ePfk/aIrVeLap1SOrLHT3eHEYcuFbQs0F/08Q3pJqcR+Uz1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsgsGgHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsgsGgHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765414373;
	bh=/KSI8lDKH8/zZJGObtfm9BdRUDWrsl7S7TI/EHbYB74=;
	h=To:Subject:From:Date:From;
	b=JsgsGgHAf/cV0Ywo+vHfbRarYTaNYebE66hEN9oE8Uq1ecL0Eg+0knoO5QevxjftL
	 c7FmtH/kZiYAIL6RB+OEfe6a98GlvGURsV/uJqYxftABYU6TLnVYa4vjp/oLG7gcic
	 AS2d3ZCK8LEA7veTfbkYXYOMFsZZByV9eYx7KlonjNZZu3ktnMvNMuaNu144U2fMte
	 Uc2RP+jFC0E+MfnYUOvZOZlI5Z0RHKSeNv3bbOf1980b8zb3VMK4YWy3n4npLFXj65
	 SrtyOLPo4cJ3W1gnL6HQFCQoeisnm3FiUC/TXSuuR2smC0HxYlhyR+n8gh8j7nXkJ2
	 aNHYyxWWuTz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92689D3B9AB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541437358.4182.832441959513141162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428b1cc27b6dd829c38d870d7f0ec8d297ebb984235890007269f9f2569efb9d
Date: Thu, 11 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765414373
