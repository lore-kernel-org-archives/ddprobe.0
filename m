Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305053CCFA6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774021494; cv=none; b=RI2VSIRv1wItQ8MC1eOOfHhsDoYunVR24l5OPQfDkJoxxrvNKUPgRBtJFBwjqGBnV22DZ3Do4TmX6ocK/3S6OZLzLF/Sxe8mGuB/E3UWVBRRNhna8nsq7Vsx/dKGwAPX2Usbs8Ai5mj3G92nY896VkR1ZVV+bB24Q0sKdajonhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774021494; c=relaxed/simple;
	bh=QlCSf+8DZRtQOqCaErLoOc0c1Sl1RBSmDHSy0sP69f0=;
	h=To:Subject:From:Message-Id:Date; b=BzadxIGiwZLXQfZnQfCWEhLXccQN+JyH2qNFM0wQywSEYNQjwVFWjRESzcL9Si7Wd2Bdn9SA7eRk2K/+o/Tgl6RP/rNZGLMSDwpmnSHmMDJllRc+KlS4kp5MnjGVi4CW/Y31qt/0hIk8fOdKC4e4pIraNGC7WEed6o1c1F4UN30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad6pmw40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad6pmw40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 965C8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774021493;
	bh=QlCSf+8DZRtQOqCaErLoOc0c1Sl1RBSmDHSy0sP69f0=;
	h=To:Subject:From:Date:From;
	b=ad6pmw40/RHQqfAm4yBQnIjdbFrtKYY+VBFJktm+UXlDVl2zv5YnsF0JEHSIQPNus
	 oCfQ4/kd6nH7qk/sjY0MjSXy75OIMWss4cjuntLcBLWoFFxr8IwWzRxyTBVbhL0jrD
	 8EZK9F6t5rEbmr9n3t8jNjvNRe8uX461MQiY8bef6y1yx+hT+CJHm2oJ87pu8UiQiX
	 05m3ORwN9/2TeQJL1VZivp3lAIl+TbKVJ3KDl5o0+xQI4jxWP80t0sN2qlfaR1SRd1
	 KHYDU30hpEv7Fj29pjo5MdMEE+roLKB+Jr7/g9Q62cm1jpZ/9Hj6MlumN0Ds8oggtV
	 TIoLy9ywaOzAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F782109879E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402149357.31629.13005452050721161140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7792db26ec91189c978b8c2263d3ff472ce0d584c9181e2509f66378a603454
Date: Fri, 20 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774021493
