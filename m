Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8F1283FEA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776294454; cv=none; b=m6PTWoPhKobMrEO+dEXaFjr19g2G98xgRL7yCb4qOlwOaOjl+RcXtY+HKXljLEQDka1Ybg61RZJEWKh7hmGHMyXc3H+nwuH4995IAMvtx/+UyTaS0uLGAVWKC2RQEcsrz1KfyJydNSVECU/dWPcSFPNUSLH5zflDDh9uHNSptSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776294454; c=relaxed/simple;
	bh=qvEUfPU57avUDdptAbkEZYaF05Eu0qRmPvKkuPBylnk=;
	h=To:Subject:From:Message-Id:Date; b=BV+PiAfFiVDJYv3AiBqHTs557A8mwKTyRTGLYjIjTLzda6k92niz+uFVvRb3sKrFkI8fA94MSMO9Vj1HvEArVmlI8rY8BZGioVtHIDiYxgoDBhFuUGozRw9PSuXogx/HZQbonz1vR0zdX13/bnHTM5mzygud4vLTYMNbl/NGdtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXi3ynRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXi3ynRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6781C2BCB6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776294453;
	bh=qvEUfPU57avUDdptAbkEZYaF05Eu0qRmPvKkuPBylnk=;
	h=To:Subject:From:Date:From;
	b=nXi3ynReN9aMqoktaMmc93BxL4KJL/m7+j4b/Xxv2KaM1EM4+fNcDsix7UDdiq2jL
	 bDuwecwiYA1VvTUo5qmYKkrmRQp/Sswslen58rXiwK//5YanGar/ON3W/+0bfC/+oM
	 NF4MEFjIbHr+lljv2JFUmpwDlQcAwaA5XgpgyPkyMk4ScP9fVFg2kGuY6DYfxFJayK
	 ZoQPLoE7ggCxbIb/hqYBs5mWzn6e3LYO8ws9dVa2DdlK5Z6GQ3z4b0VwuQxDC6oOJg
	 8yCow7YJkpMIWFZCrZGU7Afo7qC5JmCoS8g9XPlDtdBNJShKGuFcKxwDFmWy4KcVU4
	 JD8YROH2bpxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6C2F433D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629445369.13246.7228586815282229011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060845ac796bb48924b3ca1d4d3ec65b42218a44530bfec3e9c4a21172af8c02
Date: Wed, 15 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776294453
