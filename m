Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C59434989
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790101234; cv=none; b=aC3EHKaWbZK2rwesZ+yvOCZcwRIg5Qmom4E+cRRKPzw9MCvyxnmbZzLiFECBayd0yy0itnNugEdcxrC9KEPmhluwiyAgP5uj/ryhvqZlsb5UtvbbeLr0n1z+HUKs9LNq9JeSNy9I+ry4rYenlQjusQbjCnNjxl33xW1B7BI5Ugg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790101234; c=relaxed/simple;
	bh=N4EDhtocstPvSUNFktp9j6lv4a9m9a78tSJXuubDrmQ=;
	h=To:Subject:From:Message-Id:Date; b=aVQn/B51NPzoCS3ZuzEH/GzAqQJA+0bB7NlLT1G+L69JQ1OtAFxnxpN0upA8HUxRxM6K/jfjSCcR7MCjVBShs6pINHcpposZ/30YS1xylc0mdCfrgLKV94s2VB9JNmaz0YE9Xbwq4pKgWeEK8Uk5FOloCOlfeBXb5I9TXqNxPyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/XjAiMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/XjAiMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F51C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790101233;
	bh=N4EDhtocstPvSUNFktp9j6lv4a9m9a78tSJXuubDrmQ=;
	h=To:Subject:From:Date:From;
	b=l/XjAiMjVT3A8eJ44nKUWFdOtOkTN9EDqUPn6Iqkgb5cSbEwss3fqb3+9q9G80ihP
	 3Q0G9BrH4VpCOM1xEvc+whpIqsw3JHfAZ/3MMNtkCY9WDywZ0qi2xkrbErp3Equ6fb
	 Ju/MpozpJZUOlZ5LSVowvki+cvh+wmCWEB8s3jzw0TkpzsQbztEvyQKmE4uUQbCPF3
	 mKat87A6t/+xP99beYyfWZ90fxtQdQl1xcnpYilksTs0ss4lFuI3Ky2UVqrqnJumzB
	 gurULZtYKLY4UOoxxpbBKodLIDKjVneaOJLVhVeuUpTzp4/gfcVQilN/0eMRuz3C6g
	 r2pjvS9EHCyww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B654EC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010123373.17617.18145875509357677071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb708a180a5fedf7868d90e51e1fed19c3f6e48c19ce6d31a018f84252b11cba
Date: Tue, 22 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790101233
