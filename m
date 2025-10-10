Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0122F7460
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760108394; cv=none; b=pmHgbneLi4mtDdEKlrm622cXU9nf3rqJMioi6m/EmoTq8b1C++IxqVFigQ4/Yutqdgl5tA0QYnPb/wO8ye3QmU/d2cnvuNAA5e5qUViRNaA9uZOFj+FjwlZaFiZBJ8xLeA2iZpBIjg36Cdw/lFAjBGN16taYB1gfUBZCXDnKnb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760108394; c=relaxed/simple;
	bh=NZFjnBZEAo8ThsNavKV+Tva0uWQCKnZg0ZSmzG2mVE8=;
	h=To:Subject:From:Message-Id:Date; b=Wyz88fA0nDPIIs1mPLQeYMY4/ge76LqHVoflv5bETciPtlJhuSr0mjGvYijmXAr4/yUC/PdrMAuULqshq85Azdt3N2pmXueilPAXm+PGBfB9UDCL76ZNVpmxPEhPUfLS0C6fprer5xaaI9OlhsDDaudZw+HwRUMSJz+YoLl8cdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2tiMsfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2tiMsfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A034AC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760108393;
	bh=NZFjnBZEAo8ThsNavKV+Tva0uWQCKnZg0ZSmzG2mVE8=;
	h=To:Subject:From:Date:From;
	b=r2tiMsfXrhxZ+qzY/uGXA5jdc/yzsIHcE0KbKVVpk6n02DVXtpc4v0YZzCeJeE/Nf
	 Um9GRWvXsck7po/VGC+CTTfbbiByrOs2Eeou0U7CINcpD1YBWh6it86YDqeeF6i9Nn
	 L/xh7DuCKrWPbNlu80NzWgl8MYbeaYvag1D10HZ4H46nNesR03ohSFpnnJL3ZfXX3Y
	 jBvTadvTGCdxNkRylVbKJUeduFWnmKyI7njZu6q+pKky1XhRco57BfrUzgCWcpizG6
	 c2OPvyBV9hUNgk7xSaiJIWticyYYyGwOK+WryvVXGwFqzmmpMZnVKHxjG42t+stYMX
	 /Fvx0BFBdb6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDDCCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010839357.25114.9487025999008804943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e761031c80fcd4a231568ae2ae3c319299bb99d46e7021222c8e693cd6aaa92
Date: Fri, 10 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760108393
