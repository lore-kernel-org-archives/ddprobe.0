Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073B4242D70
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773363294; cv=none; b=V7kFtKVeKxpe4WlVn3/NDNaBtL4M01o/B7WJFpgrpffcTygftGtYiZJgxLT/sdn+wP6wRpyTvGX9g5Zp1B8tS+OP+/Dyh3NAZAPxSynrMVG4en9TrDVL6YHP47x2MxmyHYBLnPFdPb6Xr3nVvEkah7asL/AUMTepV74Z8crZeRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773363294; c=relaxed/simple;
	bh=dn+GcS99v05qLzVhV9k+1Z1GWiMGsQqYfDnE5QRIDSE=;
	h=To:Subject:From:Message-Id:Date; b=Ngb3STYji9jwbZ06Sx7JSYrWLPej+yXwSYJxr+XEsck+BTcTQAIdj7waUqCrNrpdbLSwLzuLDuGz81JsHLQS9zRVXkhM49abMJOIN8ExLjQq5KFuAyp9C0hZC8qv7QAwd3bGRtyBxHuu8sJFvGXmsVz2mPDF/hLO0hZ7Hm7qG2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNS6P4C4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNS6P4C4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773363293;
	bh=dn+GcS99v05qLzVhV9k+1Z1GWiMGsQqYfDnE5QRIDSE=;
	h=To:Subject:From:Date:From;
	b=RNS6P4C4SWIGhhe8EVD3W+2Dy68S2lhgowAiLABa2l2cedxoCPpyRnt8+8Fe2hS5t
	 Z7e+xFjypBQYNGIzrH7na9x7cF8ntxPZaLptB9fH+9lbvlN1yXt8VQWEXnRjaAkR2z
	 OxQELohb9chz6m2lk5ysxQyRQUFmRUzEisdg4v4JtEC1XBYKeGIWUnYLsH32xkv0JZ
	 XKhysJeKpSGnOXq49xA/ESdseVuXqB4ZROjngfCJYtrC2LbyRzoeYN4IEjBbZf7Cd/
	 faOON4sGJYLZ60EewO77EAihKfZFwOr88o5FBDiZ4FXsOMTPVd0s/UfT0cI9R9oHfL
	 NDZ6UNMelnQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E45106FD60
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336329357.4205.3083449626050726846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a2443cde24ee52d91e9bae3c6b97ba82768b333bab8e94c467613bd4fedde0
Date: Fri, 13 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773363293
