Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE811EFFA1
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775913453; cv=none; b=Rptvv0aMAEMQ83zn70m1BxI47Cob3qeZxCSUroo4gRrTcDqcbfcU9RJBSi7Q1vu8xGcCtCihmU9xyBOBHQJ/q2OWWObVdbkukOrIHAxeKmczWzLevzN93Si4j2RXOMYGuTZX3AtuBM2dZHoX0PXC8qS4dv/uUfQCERoTTCcAQ9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775913453; c=relaxed/simple;
	bh=thBGwr6z7DGs/K2mFfflukW/XgtmpuQbZWwTnLgM6Yg=;
	h=To:Subject:From:Message-Id:Date; b=DDIyjLS8NYE1czbOqE5gJbOOs+bRe08hvSmxvkQue47HvSefzQUuKE9/fh5Tg98Xpi/3wmD7u/2dBJKDazcaMccGQuoPTtC6AMyQWG3C7lwIDbWtlNW8nn39pFM90hgXB8K0tbxky7LHVkz+WSYbH7VUNNl2wiy0ZmRb+lGQoBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kR9tD0iW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kR9tD0iW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2761C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775913453;
	bh=thBGwr6z7DGs/K2mFfflukW/XgtmpuQbZWwTnLgM6Yg=;
	h=To:Subject:From:Date:From;
	b=kR9tD0iWVS/kml97qAzHyqXdgBaWoHIIhxGyLaDQr+uJuvPRupWckmDiRLIrFcfJz
	 lv5ZUF1IVwjZ8AdZAeW69bx1MgCC5GTVg+Se5xEZl1qt/3SclhJ0BwirwRby19Steq
	 63hdXOHfoqIvXJYzgVX+5rwqVrkPyzWIcQR8vLcAKg7qp0LlNweijrRf9RTBtiT6lB
	 esW7BHYNLj404LxlT/MJLz0CHADEm2moTOiLjLEYAMrn7VKz8X6H5APySPkA4oK6pI
	 0kRexnUKD5NG2LqAn5wDlWtRIi2pBhPQTtTauTTcJDUIdnchYeMDl1ygGYHx8CDddY
	 rksReccbpf5IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0BAF3ED40
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591345369.13074.6885666364935050550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137d0d876333165a95bb797a8584b499943d8b5c5b85b15f75e8465df4d4550d
Date: Sat, 11 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775913453
