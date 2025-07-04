Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEA7143748
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751640594; cv=none; b=SDfAztenaOwcbPh3lDYBFL0zBVM30iS7YoBBuGZV/6nsf03SJ6kFtRuLbplsAQpASN8EYoD0tBOd4F3sY4slwNGkiR9+5wUcVyvhq2WUiFzTA1TDu4LhvnfK6neahIGhmmVs/Kf3QPPdbbZ7Db1Yd8CTQqZYWoyRsZrCLnWI5pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751640594; c=relaxed/simple;
	bh=Tvv6cSFB6ea2QfLVF4Xt2eUa/eYe1FIDVRY1l3YmWeQ=;
	h=To:Subject:From:Message-Id:Date; b=JpJ3i8jqWTKGLEBowl6/hOFRiHFZxM0YJkdxUH9LhQj/qmgmcFD5/1t60y/AGZsBiYBNpKAGciw1hE2LDfveqd3bm1BW4Yf1ydA535Uo3oVMlCYX+JC6V7pjC8Kz3l9DJCT8obUkQtm4jRfP72J9hBkmgHDTjSVoAUxDK9JP4dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcU+jrVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcU+jrVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A23C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751640593;
	bh=Tvv6cSFB6ea2QfLVF4Xt2eUa/eYe1FIDVRY1l3YmWeQ=;
	h=To:Subject:From:Date:From;
	b=DcU+jrVUdTutHmgC6BhHTatQPOqZnKhcOoknbfeMY7hkQLYIb7/6kHxAiuJIJMB7k
	 Ld0aYQAT7wLdIj7W0NKgdOfnaI1k5+HXf0l9Q+aSVn7HsPcCDm3MAYiG7iFbVbMA1V
	 NtRolEukLQXjAT0jgXFsgoP7kbQfJjdAQIy9urUAXlId3z3jukJNHHiLNpIp0orH6v
	 UvYLUjMWr3N6/Eaa+wbmmKHqIPvqlE5BCrEvJ9ZZb65rd848RkkYlhSyYolJ1ytaLC
	 n8wI5tj3Kbh9jHqU9dDWu7DwWRhbHwiHyQsqwDuftUE36oZQzac8T65jckgnwamAxJ
	 dkbthsF4YVF2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC30C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164059357.23060.13943727516313699586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87967aea7dadaa9653ae79bcc61a8bf0764308d41d4455bb875bcff99980cda9
Date: Fri, 04 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751640593
