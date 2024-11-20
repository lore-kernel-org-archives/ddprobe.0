Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E57320B22
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732070754; cv=none; b=WME1uKlEH+mWQl3FbXFmWwjVWhL3ISRaeHQcl9kULOgHrvzlWAs+f8Kz7JBBAQfL9GPIFo92DSrjP3Sw7Srktgp3mt8m0DGc/52f+spE2KQNA3+xQBxMn5Fx2EpkLQfE7EG1rY7PH9p00ZDbts99jm/PAQszTVa5fAfAzGzSXNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732070754; c=relaxed/simple;
	bh=lkl1cfMtZ+G6uRyJjteu12llFL5Q5JfFBd/v7q1/Hok=;
	h=To:Subject:From:Message-Id:Date; b=XxjHlMM3hmjoseLLOXhthwh5sbVFEw0YB/FlfzPD0jTbdQCpCVUjM6oNdyMdBIl9Sh13PrM4+k/uPHmpsvYBJOwBjb1wVI7YkoGAA0eGRYt7lqhRof3oxM21oV9oL+t/Rr9qd2NESyL8qyktQamYSTLbnu3snGrStvZUCkqqeP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBMRAqIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBMRAqIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED2C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732070753;
	bh=lkl1cfMtZ+G6uRyJjteu12llFL5Q5JfFBd/v7q1/Hok=;
	h=To:Subject:From:Date:From;
	b=MBMRAqIaza3agfbZPZjx2zmiFv1K901nTTla69Sgl8Xm3FGN1Oe+TF2I6Fl1YJTwz
	 /faZHdvK1QaX3R7RvZZ+dlF57xc4CNPWwJEerduttDiyA1Knpui/0xUdltiTZE1FBK
	 FOLA8sW3AjEIEF0tNlfWc0tJBvsqnM8UobeARFQXl0JI5CZbrqMii2TQtXdKmSoBq/
	 Bic8gTJgo2DrdYYH1/noeIriirl5TLwC6RiY8SJNUDc6V+VINH4tyOlBVLMeDyD+AO
	 +xjjB6RIOVLYsi6KCALJ8Kvo/DK3xaRxRyBG3FbiFi2NL3YhEscAiFNXAgD1cibR44
	 FUrc/z47eS6Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004FD6E2A0
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207075358.2010.5719368600427186529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd9681263da59adb904d83b5a53c98f2782e5fa7b17fe6d142548ffdd16bee6
Date: Wed, 20 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732070753
