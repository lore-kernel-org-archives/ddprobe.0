Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1233919D8A3
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757685594; cv=none; b=hNZ+dIaHL0LDeAtybFasRBfjkoQeV3I3lcgp9BiBQtDlKHnntjPktUC0T6vmcJhO23GcRy4+eoUBwWx4Eqb+o4t7ppzIJ0A1b9z00JIjrI4BcRA9Iq0zjL5nO3rZhlxtjoxx/hQAkifeSbg2A+HIUI4mDXfx/XtdXVpE5N0SuM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757685594; c=relaxed/simple;
	bh=ce2lOsyibehaUBdZeWU1/jeLlEqCw58FSlObZTri+EY=;
	h=To:Subject:From:Message-Id:Date; b=seZ1NRHckyrcsNWMxXhBWa3rUyasa03Vl6Omb9b6QzI7D5fTF7OsbVbElNbnLJBapIOxYJbWmhJnLde9vqkWNXsjgu16ucs/feMgLbnzko39XO/SjjQU+xAhyA/1iFY9NjxtaBjlopqvIqE8UsYmf/m7vJ57y1VgLSBpXFbYuDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWMe30JQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWMe30JQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F6AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757685593;
	bh=ce2lOsyibehaUBdZeWU1/jeLlEqCw58FSlObZTri+EY=;
	h=To:Subject:From:Date:From;
	b=QWMe30JQjQXPp7nlvOEwRWZhG0uONqPiwCvrYdqUjp7XbkFDjPP6BSD45n2kjU6NB
	 /ns3eqc3ZmIE63DJt35MJIJZ7nnEXXwbThbpWa9HW2tOfvPQ8eXLkwq+ExrJCOIe2k
	 j+gxiI3xjp1hRWM/O4CVjR0gQQPjvQLt4YzGvB+rUKzgRoCqpP2MUIfEAMDC8DOD/v
	 LFPlWzS9MAq2rN7MeP9szeKWNzrlVZe0uI0SsT8uBolmC/3MdYL7xOPhwG3OUcqlRA
	 smfirI7xDBHBkgGRFVh2CXX8RgZTGEIKvFRSTOcu1Yck0kwgcQfc7+tMERyC7NoX7C
	 gs0EqIoX46CBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F30CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768559358.21651.12178044542078405594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74a76f1264ae0fecb5501b57324262b2b17c64608eb6f7e995b6627acbcf2a9
Date: Fri, 12 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757685593
