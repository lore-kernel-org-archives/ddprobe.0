Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154E028DF07
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767709434; cv=none; b=o4dnrBvn4/K6WYrgShqRBx10462ZRAch6lGKC+QXLn1mrk1OKcGn50pvh4x9gwFyMiTKEz3NT4pnKm7DYiRf0MlA+nXZlGOnn6FJVAzvLhPwLOji6s4XSxljdYkXPQe26Yb9iBDp2I6da5M9tvwqPcdxt0/E1aBVNTJ4XiVjmvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767709434; c=relaxed/simple;
	bh=q0dX+SVm8dkCm1aK3FTOTHDBJFyKkI4GIH951OsZjNM=;
	h=To:Subject:From:Message-Id:Date; b=FwtOYJWxq0taQG6K0DuLg9AtwapDBIulg8JFkK4UVsqiZ5fQZrh0Ju7ikwpLANuE1gR2PH1WX0Phndf7ffKa27aQccsB8ROuSTCZ4vniWU4xBPpZOVEmT5HXqYSMKr/z16c7zZemBJVJ/RCEzt4bib+SLKbqLfvlij/0hKN/wKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF+rHFgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF+rHFgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C439C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767709433;
	bh=q0dX+SVm8dkCm1aK3FTOTHDBJFyKkI4GIH951OsZjNM=;
	h=To:Subject:From:Date:From;
	b=vF+rHFgrrEiLciWOPQgUn+Z03xTinogQ78QV+r6nkVGkjbNY3ioCK6yUEHMQDMb5w
	 mZMpa+WPI8T42FhwK92ZWtNHbrNOfRwnTbcOr1oIRHu/WmIv7qFXc9O0hp0vDno1yL
	 8MoaMt79ADDHMLhoG/eTtenEBaAdklisJ1xriUUWLJls54v3lArLlfIIHSFfYqljuv
	 44eMrtxsHqFU5EY1jMdERCOtHYtWrbvnHaKbjL6/d8pJxVDSZOXTUZbivniNgNK5KU
	 YXqc+bdf/OdkujEiXtmk2JRyYGd28QE8QN/Bp4nhpPu4uWSzk4UNlP1tQttWrtUFo+
	 lGamE1nVJIlPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DDC47BF5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770943357.25818.11926378381416406573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ce4a417fa400f67b18e24ab7eb2083098eb3e61c0a4993ba17015c6353d7e6
Date: Tue, 06 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767709433
