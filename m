Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DC31DFF0
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727645754; cv=none; b=dQ49E6UE5vtqPCVAecFIQhgI8oMJ3k2BPgW9OGIalGe/pH2VVOrq7F+ro1AI/59OVKNAdrnA/9pc/5sIgoJoc1NyNV82lR3RpvsL0OJ6Dpv972Yqi/KK0bET5+JnIT12Z9FwCJ5oD8T23VXCou5qDQzeukhNC1By1VbQqXOxQmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727645754; c=relaxed/simple;
	bh=JrdO4AAuFKndhjxrtuzPh/bMxbv3dnP+Sm2pJFu7+Zs=;
	h=To:Subject:From:Message-Id:Date; b=l4wNl7HuWStBmFUG7vt6kP/976iHH+Aqb6rVx7PXFuFJN1tCk7HkrA+CKhgCxWcMZOjCJHHFpS3fMPZKomCTzeCKjcc6VAXHlL4D/M2jwzktcJN1kgp2E2r1N8Kqy5i0nL1QdORwHFiv0hkaMiIPxjEyWJRf+EOkowCJ8am8/VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmtbE9lJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmtbE9lJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86EDC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727645753;
	bh=JrdO4AAuFKndhjxrtuzPh/bMxbv3dnP+Sm2pJFu7+Zs=;
	h=To:Subject:From:Date:From;
	b=bmtbE9lJMx6Zhmp4v4aHd/2IVfizhh9zQNKpnZlmmgLnqGFQ7d2j8GDcZTgDUZrKE
	 3O8GSOcapf4Ht4OgLCxkWAPJaZjJmk+C+qqmoIWIVlgpEWvMPEsrKItFMdx/j/9Tb6
	 nE6Goo8fjXUaHTyEz0c6wI90JzBzvYkuS14AAJgE+JNs3I3aX/vj/r2H0DCjPynwVu
	 5DK8rjiZTHkE3A+i1ThmwPnNcJd6z0jUDhJah7I2ZLqfjL17M+yElPjJei3yefFwdG
	 B/ICt0oGqasnwnzTVgoiIwPe2CwGMQpfq1O5ea/kI4JK+nIenTAzD4E2UaDG25b4je
	 ZzYrnN8K6Qzxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B70CF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764575357.27152.5547518822243554008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24af3b0553ef0be4a690ba79ed46fec7f8f91152db5ecbffc58b8091678bac56
Date: Sun, 29 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727645753
