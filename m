Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377DF401A3B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781536594; cv=none; b=HLXBpwviFyzblEKDJgQ352YNAfjZi224bwJKIwxbvhCo8+HoowUrqx/pNXICr0L8f3fDeso19DuvEnRMdKmpXPMQWKmEZ7+To28HTfJuIQLpkPWq69bJiAxjbxhW6ElxCX4xQs/lAGXUGSBu72ULw82Xc7PsuXlPbAXj0q3GbCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781536594; c=relaxed/simple;
	bh=/uBDFKtM8SvvdLuuCaAvbchAUkYF2otzRlZDHqFUw74=;
	h=To:Subject:From:Message-Id:Date; b=XlPVqdN7np+ZAYpbJ7FvEflyrlRFinph+FU8qOny7iKDCD9Yms6mFo20gN2FHcII9RbAUvYot77+oyVSIqK/jfj7pIExDO7tiYaSI0OlX/hX5KOJuA8dXZK0EK200eE8k6sy+GspEeRRyXgYJK/i96Ta+q7Znabh7Y3Y0SNYZ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQfKuiWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQfKuiWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C13C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781536593;
	bh=/uBDFKtM8SvvdLuuCaAvbchAUkYF2otzRlZDHqFUw74=;
	h=To:Subject:From:Date:From;
	b=sQfKuiWyfTkbssTFqrCSdyiMEF6caXfRvLY7T62FXSsJFFyj+38JFgWSllfJU4sRk
	 zsqD/NYDiCSDaJctRjpeP44WsqSrJrJBZ6xqDo2IEHBsJ9BcrYgtlWjz65GJMvIFlV
	 JTwHJYuBWrAvS2Dt4OIAe9ChDzHG86G7GTDD3JeQUjudwu0jBNhsnT2nWsMl2P3Ar8
	 O8vWdNvQ6VVMBsKrc8r7a4JV+q+pRWRhSj/hKRj+PWWNRv2AkMfV8JHCqyflAFZF9H
	 xVurvW0CHa1zgsNLm5NvBB9LJvSK3UvyZFVdMmn6KC89RjqgZ/gchwE2/CqqnSvfOn
	 EanF+dyJGqL6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BA6CD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153659373.24131.2093521850706781159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea5bdc95b48c0faddf5254374013c0177773597583fa0a01fb958213281a0d3
Date: Mon, 15 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781536593
