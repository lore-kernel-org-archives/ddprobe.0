Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6DE145B3E
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763045394; cv=none; b=gBA5kfSUkI9bGZdRrM3Z+JYtMKYlSRi1BxUhn8UEglB6B7smqh5gjIVdL5aXfLa2A6FW8pXKarTJGeSVtg1EgyOEC336UP8BAXwLJOGz29G4VclvHxKB8CSZYhg8CyvWMSZ16jCdOKIu9mA18yS9THjMPIweSlsOYfPseDwbsek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763045394; c=relaxed/simple;
	bh=T1zCJ94WXbZbgBfT8LylwVY2NKLcXT/d8c+dXvDvF4o=;
	h=To:Subject:From:Message-Id:Date; b=oIa4LUfuFhSY6eiXcPfu+vhdiqvQOHcklUNPKCzL/p/msb7pchZzJaMfpzoseQEywGpEF9bdArJNRuKfEJjM+SYC9MYdT+D9yJ9o9NMwLwvyJY3kcrj9p2dxGvrOiW8HKVmVhJIn4mlt0bBLQJEiXZUnl2iUPHxhrYIIVbA05a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI2Yzhp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI2Yzhp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0BEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763045393;
	bh=T1zCJ94WXbZbgBfT8LylwVY2NKLcXT/d8c+dXvDvF4o=;
	h=To:Subject:From:Date:From;
	b=VI2Yzhp0VVXr7VDUxkyqgrQVtu7C6Gnv/7N/JGpkhVmwO8EgrdV01L0sn2t4Kufb/
	 7LdxylZhWZTfm7eix1H+Aq7IradM2uJlZd21o//0x4WdyDlYZg0FthQ8Z7wO2oPfV7
	 sMhplk+JIEiuDqKfUYc0BBnA4fwSHBtG/owZ65Ru+czbYbWd2L8LKQodx42fnkk3Q7
	 yPqaVyrVPpmu6n0NSpz6m3B6lMd+e+qNHxThrwW1VMao/5rWAh705SEPxkZFRPMuLd
	 zwzfQfEgb7mG8XkQjs0O0aVdyA9QK4bSzyfWLc+pP9XRo1dTCDNxMn8kfi5HwiIwVh
	 b6Iz6/nV4aN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC0CD6E73
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304539358.11060.3017008079443427145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0afa102eab7794666bae36d2ef0fb261e389da37ee26d4e9d58ee52382eeab1
Date: Thu, 13 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763045393
