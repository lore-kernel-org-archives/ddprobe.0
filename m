Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DED9F9E6
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743640794; cv=none; b=K73cK1wwoug0pnWPllAcbhXNqcdzQ+v/jQMFgiDd1bcdsY0K7S8DfIHk7zzAo3+5qQqBLaH+xWPB0fNslYNitvck9/S4SWdCOTst+Hz7lfJYF5ZUP8IrWdbeEnUL1dVUNnUqNO9fGiDQ9lNds82EAJtGhqadC9m1+DcWeWxVFbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743640794; c=relaxed/simple;
	bh=zRjkZmV+TygrADzQOZNhPeGPMfY4vS33Q2NYExXDudA=;
	h=To:Subject:From:Message-Id:Date; b=E/EE+WBk82yTSlBx4WyMBW3H6ERleW6RdVCr95bFR/vmrFrupllGJhMASb74KR++yavO8nyBu1X3lGfwZ6bd9L02TnW7r7agbMxVhVHtlczmeh0k4yL3rcQe07hvBcQzUWbtgJj0HdyB64Wz/yeZGeka6XzmqxI9z/XRD9EOC2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZJTHHmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZJTHHmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD250C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743640793;
	bh=zRjkZmV+TygrADzQOZNhPeGPMfY4vS33Q2NYExXDudA=;
	h=To:Subject:From:Date:From;
	b=PZJTHHmXC2tLFWhOkxUU1FQie7qPSeezO74a+fhV+lojYeB9oNOEcnnLerwjbpWGY
	 NtREEQyhNJHgs1cvxty85QTTB/YszvHlRKyLwuQUTIgQDSHwwWRxn+g8f9qjn6pBWW
	 k5AnkGvwQhN7uCeqMNnQ8A5062AaOjd/SKtW9agwphpNX8yfl2af3GDZJcgUEkulE2
	 bNikNXuO9TSfN1aNRuDfsDYjBhyf6SLveMMXb0xXygtFKE473Sya+n6/o4J6URxeUn
	 WxkqxMXcOUgfmh4RBqx3cmy/8y4FtJH6LD1NFWMRRrvPdMYYbThHhlNLVJO5QBwBMO
	 r0pVrpXvWw7sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEFBC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364079367.24833.13925232059068525116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6fdea2023e40a4601ebab0474d8e2a17df3731729b1626955beccc98440b0c8
Date: Thu, 03 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743640793
