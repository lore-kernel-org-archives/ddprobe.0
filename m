Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E9A156237
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769520834; cv=none; b=t2Ta0htnRuaykY8T/2xYun4ilkjOXwuSed/b9p8llMaVbHctHtg2yvUJeqPtSt8bjOMYW3YNkniHkuY0o3USHAmLXbCsNUM61Bj+Cq9B6MK4ONVlW+gPjOdSuMW72aTkkYF7FmyzzkVn9FICQuHxq7XP2c+COT9Sp4QZeLLRMBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769520834; c=relaxed/simple;
	bh=/khFaeWm9jYDClEB1vYnsJ1bOmW1JuBYQm97raNPcME=;
	h=To:Subject:From:Message-Id:Date; b=OORL4lViv6PmsbzSSJ4v11n/dfI2ATNe7XIiki4g6BYkkIQb1Krt+on3HrcTBsDuZbEA++cPt1pfpo5LuYZn6ud33yD+yQ489fvneNMDPjctHxWbF++Te0ajPh0l59biquTBCVw8unzRdI0P7GhmleRwLcwjFGYB/XCbivu6CS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFjzX6H1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFjzX6H1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD75C116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769520833;
	bh=/khFaeWm9jYDClEB1vYnsJ1bOmW1JuBYQm97raNPcME=;
	h=To:Subject:From:Date:From;
	b=jFjzX6H1ZhgXDG8sUhiNlljpE/PFe6ZCkBfVdy2VD5i4o47x7I4IOYjTkXrMBfni+
	 GkeVoaJy4uE5RY8UkUVoHiAYF+lP1n+dZqWp/oRycw8W07UUEb8TVTo36WJv3kL3C8
	 LrT87/Rwv5PbirNY3cEhzmWz2qKb1CVTehFDFvFAR5IFKF9hqqzb0+rIhTSQRWvpZv
	 0yBybC/QWoAFaGUGg76f46huTrNVBpK7aThtRGbMguOZPYzsQIa3dd3uyv1PpYBKZY
	 zfBE1T84RtdeOl6cukJI7k0lLSUPcd7TtklaUmZOr4cjj+CyxccX1J3XZ7svYUSJXm
	 Pybe041hIaztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDED2F02C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952083358.19601.12924164318850881284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c5d0083c642f9be376a8c35152b1edccd342af178da7cffb7b9238d41892ae
Date: Tue, 27 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769520833
