Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CFD1DDA18
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755719994; cv=none; b=Ac7O8UGg4iuMcdug+/pyaVTnqspZ+W55mp6uVSm9GE8pCQ5ktWz/ucZwt49E/MvOqCoHbymvaMNX/qZmox2gw0Ch9htvfpWZCNwLXiauZEbuisiBfsIr4BBmnWBFbDCw6c5cWgo6qDCY8rz5gGTaoydQB//qMbiw07poCzT58uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755719994; c=relaxed/simple;
	bh=smSXD86pdxQXdetr5EwVDhrF0zJYU0cJEEbWnQ8X2f0=;
	h=To:Subject:From:Message-Id:Date; b=CNNEyFB1SsPFwbY4PqVdSWsoXXxfUclFol5CXmX9vqe01sTXmymHSEIhEF/2QmK/AxvoOPyQzAz86ZA9ZCXXrYj6PN2sErHVDfEWZ+5uLconk5B6MmIXuY7CIgpzGkgGffLUpZ53KmivnRhgRGhowwprWYSICzEGOjay+CY97os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVsA/Mct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVsA/Mct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F763C113D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755719993;
	bh=smSXD86pdxQXdetr5EwVDhrF0zJYU0cJEEbWnQ8X2f0=;
	h=To:Subject:From:Date:From;
	b=eVsA/MctsyR1+h5h3uOe1QMRwxMmZMhWmUcY2OBB7z3zvz2cQfL37SpBArKgb/o01
	 JoRxGj3cjPLyIzJhq57gv1HQNOtHGEGM+Rb9vLU3MVPO250/ugtcl15Cw3dC4ahJ7i
	 F7alDClIeeAzP15Fzi+oZlYyWVxD9JmYYPHk6DgvUCxEJkNYO2C5z4HH0j65vbhWMC
	 Algsh8WxvGnHDzWERnvqECDGqWmsFi6kY9P/thFPRcRny/+MxyxjFaHRRDkdN78C8v
	 RKbTudZwRPlz7hHhbSCYxZUS+/4vhu5VnFnKYSTEZB7lvl6QceqyPMmj0ud24SD9Xg
	 pn7e7ZLB382+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F2CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571999357.24713.1590354198470228654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c672e73317488e11c0b149ae080fd0a1c79e1dc1c289f3941c1b1e8d601cbb
Date: Wed, 20 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755719993
