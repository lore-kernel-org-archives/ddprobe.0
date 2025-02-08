Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F4D1B3725
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739007354; cv=none; b=KwQS7OxeU366ZW7NyxxZQm5WdW4oYGJHXlpjqYn1obtHb3m/YEu2WsilD1fTaNtymIC9ZMdC20ARW3fX/wpZUPsaZMtSElJWNZ2/RNrqR3/9MrvXcx/cAtVM26IYr1yj4CL/iXocBphpAHW05Ppc+LVOUokky/QPHZAQimZGNLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739007354; c=relaxed/simple;
	bh=vWEIgzUX3/1rOjzAFyHXA8Qt8pSb273eHzJVenyq9aU=;
	h=To:Subject:From:Message-Id:Date; b=rj5PiRGr98RuLxHRjnqzo7Ju5uLdQHIuXpW5g6/uDsIudao7zR2eodEU/e2zXghmZq6ACq/J3G7I/zLaweA8EklgeHvIse0JAmTBDR3Ls9kwm7OTRfabtI1cB2rGUlzPVXzqIuq6IhvbFfUyRPzk3VIW9wBNWzv2SKgqrc247Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glrgbeAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glrgbeAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5922C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739007353;
	bh=vWEIgzUX3/1rOjzAFyHXA8Qt8pSb273eHzJVenyq9aU=;
	h=To:Subject:From:Date:From;
	b=glrgbeAmWGheVDf6y3kMNY6OdyFefSDcR2bWs+Xpb22Ff9RNMlrZagyHmtYhV5ovq
	 O9/qpbejUpqwVonH9pHbQJ2KX92a6opYhLYemA+4zPVYK5JdIex/yZl2m07J6IIw5X
	 /y1VcwsQQaOFc1IaU5DycYnSryJpPMdsJRBNRSGIoX+xpvDoRvHSYnO2gWmWl20wvM
	 j1Wu8Sysz0J1Ba7Qemau9uD9YHNpdz03we1PwpQiK0ybshpFNaj8ufdBIGQIZQJ5AA
	 4gUCbKCA2ZYunbKxE7qAXa4XAs2fsBTY3HVFDsj6TcyWXL2KPFWlSiuE9adJshgNrD
	 +6XFvUF1MS8wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF00C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900735368.26101.10418006462267117647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d70fe80273889a7eddaba80e45421f0e4c7d75b77ea8abb39cac86c06ca007b
Date: Sat, 08 Feb 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739007353
