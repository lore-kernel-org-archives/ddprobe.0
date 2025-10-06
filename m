Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F80C6ADD
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759753194; cv=none; b=GFt+98gUikBh7nT4fPFz2zXPLMdeVwOWMpT/MUesQlXgsjIO3cnuRaK4b5LBy5mGku9rdyHAAx+WBOKgMt4l2Q8ZBajn/5VHGmt4kSorh4Vs94FZX7azJgqzvzEAgcEjriMpF4ZpWpqGaj4sUm7HB1mbklB1j2j+WRclcCTnIzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759753194; c=relaxed/simple;
	bh=NpjFBLzxbn7wqqktb8hIRSeSHdkrHdP2E48uwSZpOvE=;
	h=To:Subject:From:Message-Id:Date; b=A8bPOtkVgDvqKhPCkJUiFfcILdSGncUnndKOYsY3WCPG51K09YkK1PbpS1Si93EZKSnGg46kYt5o5c/UkESSzEVUDVICxBhH6kq8hQW4EKl9JYYCeGS9xhd3ZEK4ZVSAHXY+zeY1PLTzmKAhkn6CiHbsw0QSrvhBqcvbvUMTd7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7h21s4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7h21s4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B767EC4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759753193;
	bh=NpjFBLzxbn7wqqktb8hIRSeSHdkrHdP2E48uwSZpOvE=;
	h=To:Subject:From:Date:From;
	b=R7h21s4kqzJPoedO6lgJ7+w62d7BPSYcJjy01RZCDaB3vAlBCy3ITQoVsZZ6ae8UO
	 NFAzr+G+sWG01/u6kbIdUxz7LQ+SOJ+J+K/4geyfPDUMn5yREHwJ+h6/CwVM6X7DtA
	 8Odvll+sO0JwQOO8/OvXHE6Dr8N0Xx0DTPzVBQflYE8nuQdAZRiVIoIg81kLas/0Zv
	 aCDJlhKOhB9XbGs2A3nOh6iuRZLJsXtproe65BBdWO0+7/7wjKzPuxqRYz4otX3x7p
	 BYF2VisjrJMTO9MbXKUpryXLSSrGEWbuT+T4LjUvAMgq3rrDwMozWsjVLQ5XkH2/Mt
	 QgqQOo1S+UuuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC31CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975319362.3133.8969840394238618194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da961a1181b6dc3f8f5be5bbdce6d9090ace87ff71ce1e6c78a2a11020699a1
Date: Mon, 06 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759753193
