Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A674734E2
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791450034; cv=none; b=ipQG2HxV/c51qu38WJobrj7CpEH60pZtQE8R2iJg3Ws7x+SqWrXGlyyEVTVdrk8OxeJrNAT+XBjadn3wM/P6II6bYhmATu8ODTT1AO4IyNkl201I/iXiehzpj5GMjNlVabs5wP4p9k27TiAPN4mRypJb1K5un6mDhv+4yPSfr9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791450034; c=relaxed/simple;
	bh=t1srwZUM1MAloUfLV0MeD6VsXy0xBmqpWR8DPLDCMpE=;
	h=To:Subject:From:Message-Id:Date; b=b82J+YQtDeJDWVWhkqqXCCJAz8QdiJ0YxBtZBK4M2YlQUYY6n2sjZlCxrEPIHJOG5yfAGe0ZzzTdspVCllv8x3CHjfIlLNnW/+qlO8RxdOJnTdCM4xkVbanTXm17oxUlX/nz9pqaPTPg8DvLOIkfWl+91Vpcy+57wQt211rHDd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzVuTuRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzVuTuRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91A1C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791450033;
	bh=t1srwZUM1MAloUfLV0MeD6VsXy0xBmqpWR8DPLDCMpE=;
	h=To:Subject:From:Date:From;
	b=OzVuTuRmjhn3CmExsr5duboOrd841yOIVFTtRSRnYTYRcKz+T7exDDOwpQkbP7d5J
	 ++8xD2JR7obFqYGDvNulIrU8s3LxLVJ6rNDBjKTNoc0xmdkdjzBgBD2Zc/XWDNCTY8
	 N9jIHOlFFqesZTIVNGXS8KX2Mqr/nWbD7hhm/iBCX1idaZ+hxIB6r1q02fdvTk5eP2
	 CK7CiWPD9E5+Xx43RFCYY78QWNR42IXhhpO199xRWVisndRQ40KHl5teAo56CQMw9X
	 D8UKrt+w3KGJgnYSXVba996wr3YVjiOnpoxKdB70ccUQgMvHFy5EzDnqQNYbfbAzYa
	 +Sr8Px0SL4urg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B150FCA600A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145003371.24523.2259221884024888567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149a4783b78de7af11619a2613a221730371ecd0de82cbb38a6f9e9bd24fc830
Date: Thu, 08 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791450033
