Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADC9267714
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770153233; cv=none; b=hIU66MHN9eD9mt38nq79TRc37dLrEqpq3Tizw1rqyZF5ieADyyw8jTEv6sjWci4fn85qAnB24MtBloAfNmLJG1gGM8VXWFjpxjysuZvhI8bMSpnYRiSnpB7cixWxZtSKM5BBcnSexXxAXmQjRASFtDrlEuA9AmCN6ld12Cu8z/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770153233; c=relaxed/simple;
	bh=Fefn4DVxrfUFXLFtK0pzSoBURF6zysJhlQIZcCrcN9U=;
	h=To:Subject:From:Message-Id:Date; b=Q14oOKcjjx4GD7i73xQy2RfS61EwVyW2SUWpk7aZYJdlMA+0mohjU3W4RztaWKJ8KlK+QvMfOSDEzQNlnZnfpKw9gdqiBK+aMy+mfy/l68kDStIv3+NQAA3em3ur9s3Uo9hMs0K7Vm9l42+DF+2aevyIE/qGvuwnDOje6eWjvfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgtQ++J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgtQ++J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF73C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770153233;
	bh=Fefn4DVxrfUFXLFtK0pzSoBURF6zysJhlQIZcCrcN9U=;
	h=To:Subject:From:Date:From;
	b=jgtQ++J3ZewHuZOzebm2+oNGZfY3W6ZvPyEVUmudg4x9dNpUJ4TIKDAkE1DSXfvh6
	 eXE9B6GPEQvE0Tjf5O6CKCbb/Oinjm58YwueOTe5PiDFkwAk60UnDDb40mUvdgV8lI
	 q0lQTMwcW+P+a9V9006Zs2nS6f6CbaQJ36EYRo/DyCB7i5N1mIuXK2lSLgrd6LALFX
	 SwbefoMni0z4nJTMrNA3uNu+L1xGRm6/MUofYk9jS99K4gIm7Zhjg6tziiATdxleR7
	 uKka7hH7bJ5LGqOs9PbyiU2pgT0stPEsbhAFRty08c9/LHM3aIos152hX7ZIWEiCVc
	 v8zI/i2qprCGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9774FE8B365
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015323360.32694.15860275817778555866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88bd61745c0ec51b20d5238a66ed6003a630eb15df8e1a3e83f3645739405ac
Date: Tue, 03 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770153233
