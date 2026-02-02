Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD7F352958
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770020634; cv=none; b=YdCjY4hjyNgbSQQ4tOUUwtiv9x8X9SS7IIuBm8wFaOwS4vwXZnj5itEbLI+GNWiopBQ/J3LYdFC7yY+/3mShomiq9429n8Xr76zvqdicYb/22NvGqusZUrB9PV1PzLyU1xZ7KCYZwrnWwi4xW+/KjL5JsTjHM1PETWqHkcqUyTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770020634; c=relaxed/simple;
	bh=tuwIcu/ePZm9UcrTmpa44uC99x7ewu/OKZm2l7ND2+U=;
	h=To:Subject:From:Message-Id:Date; b=h/EKLfYjT1geXcXOCD22wYmsP6RWnAnEWU4GpSRskKQlf54xKYSjvfTQO3wLm7zLQArxbB+8/WUVvdSQCuSJcq/oSfI9aWEuw1iLD45JliFdxAyIcCZsjyZ9ACwXdMw1I7cKnAp74zJzp4kaKa3BgX9Lv12skoS/TpNUHDc6yyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPqA0Hk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPqA0Hk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B151AC116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770020633;
	bh=tuwIcu/ePZm9UcrTmpa44uC99x7ewu/OKZm2l7ND2+U=;
	h=To:Subject:From:Date:From;
	b=lPqA0Hk0e3O1vbiYiGJ0F0FJBkFNVcFmH6atroi1CB1o0aTXCccZA752m3dhCqXlr
	 3fBsCcEGazUh9OpUK+R+7RwdJ9IkPnjh7G65c9sKeApuZgO9t2CsQ19SYrnoKT7iv0
	 tHfqXQoUP1E+K82519MZS1ReO1mTGCCB9o2aXiBoDXd2Z6Q+YC0vyQ0p++FsdVn5Z8
	 2/Rvs5r2XpR5yPVxUJlFZ26e+1jIawknkrf4lSMbY0fwF0VrXZb6ER4Dn3J2RFa4D/
	 UDu4osSgreCv77mG/ONbpC2bp7PzO7H5JGy7ZrD6rT00nO/wrw3of0tY2A7bvuNb/3
	 0DNClb6//R77w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B98EE73144
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002063362.12679.5425297478585950339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e31372748c8108adcd90f375bde39a256bcd9f9c034fe08dad1da9e264690c
Date: Mon, 02 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770020633
