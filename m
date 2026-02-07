Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C72922A7E4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770429834; cv=none; b=rC6DQitnAnJqN/bE288kkrX070IctCDDI5ZFYy0HvfsYoXmqz7V4Lt6qh3wVwdNuO+ChQO5tbEMb4WiA+0cEDiWOX3JLf1lQMNfIwueHm41qoAmvZ76XIgrTzCAXcRfQzF0I2IeudE2quPat/9qiHe2tcSD6t+Htivi2k88qT3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770429834; c=relaxed/simple;
	bh=m9Cql+LmDYK+VCOlgFkTPb5JQd8SxvFSsLcTHN4vaqg=;
	h=To:Subject:From:Message-Id:Date; b=PBprkprXud6HHDp5KPkwrdcbK+q0pnNjzQpqkC6KpzAwui8r9nYbnQ25hkJZ+R3oWPPhxdwJoRqtID2hEh2faMS7i3SrmvjYD2zOW+kueRfzZ8u8b3ocJmc3wklKTZ9BfdbuvaYC/BQlagY9hbJymmlceriEugqlEektvWmPsG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8LeI8sL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8LeI8sL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA13C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770429833;
	bh=m9Cql+LmDYK+VCOlgFkTPb5JQd8SxvFSsLcTHN4vaqg=;
	h=To:Subject:From:Date:From;
	b=F8LeI8sL7CvHq0sljydzFjp47CWGwhV9H6Shlafbd750b8lexbMNdLAykyN+69J2t
	 riKJfcepH5pAW0GeOqkvbj4qAPgRGf/z+z7T1Wccyl78ftgT2jQ6ZuKMSklC8c77Ae
	 EakZSSfwus0MmMUW7fbgNEeXgOkgwAQLb8XJGEOcX0IAG0ErAgGfe7eaWou5tV0/BM
	 YHQJW0bPKjroIeTSubb6acec/dE63xkuIkBkWdqA+6K+Eo8IdJWs/3PIsDZra3XCuK
	 k73L4xg9fiHoNiZOsv9oL6pq6o0AbQnXMC1ZfCYDk6TTSVyviI3ofMDoV8k15CnhCL
	 GMSXloVsfahRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A205FEE6B70
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042983362.27441.10580343408206542851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8183435d26105eb29e422713898c731e30dda25732f06483e956809c39c6d26e
Date: Sat, 07 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770429833
