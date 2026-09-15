Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1943B8BA4
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789478434; cv=none; b=FEYgehBmVM/TzXc+Qi+CiHrNnmNyjIhTffOLhb41pN8gNKqkKLMt13tElDun/wifY6an8Mp+0RjhELOiRyH5CssePRk5fmt+dQG3vrI6pg80wCbUyTXYEW2oQPtykQVlEvbJgdd1xDvkHrvh1ul7PqypxR5kj1QpJgT8Z3hIFgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789478434; c=relaxed/simple;
	bh=mZ9Gv3VdZsqE81vM3tr7TwCzLpw6kT/Sc0RXMtMRhhE=;
	h=To:Subject:From:Message-Id:Date; b=AEyFhpcc1mzZ51ZXpcMuhBr4c3dIWF/Ly3UbTj+ARHOOwlZiz9sgFd11LpxwwteJAhBt/549AfLz0I/VNyNNjrzJoVP5pVI9/egIGMv5xN7kGcocPD+orD2jbePHYVfq/NJoQosRmqd4QGi2AEY6vdwrgmJlFwXFkiXLIdv1Y4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxA8SiWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxA8SiWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD37C4AF14
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789478433;
	bh=mZ9Gv3VdZsqE81vM3tr7TwCzLpw6kT/Sc0RXMtMRhhE=;
	h=To:Subject:From:Date:From;
	b=PxA8SiWMjcUO7hHMRGzQnfr1LRuqfBaBwNJu3zjYZqxP7bcUYx1BMgbwKodhz16Ff
	 o1VKYHsmzt9UeCxBSHRvQedmG9qexb3/OpxED2Ods64hI4zBtntc7n1fBdkU8+DhV7
	 KgKRhDdMJt1TIRJyq/Z7WXsc80qUqsEvaZqqGDCf7UDbfris2sNDZDFucYYU7ny8S2
	 QV163wQMSHQQfBtnt5avQtGjsQkQRf3jaX+A+NfPhsl0a0nE5/PvYiTy4MGLLGV+My
	 9En3EqvQxJFZod9L3hzNJcxOkzVGCP7x/uA9d79TPF7qS83QdwtmrZRiYIMOpG68Qr
	 ZZHikxs1lLeAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C4C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947843368.25206.5679479290826000349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ae846afdf99b198183ae3ce10331c7d25cc5c41d57db89d21f70a548c34ff2
Date: Tue, 15 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789478433
