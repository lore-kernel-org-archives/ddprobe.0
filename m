Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CA51D416C
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762837194; cv=none; b=q59MXzgHW2TrBRQFDrK7oXbzUaD1yfqzq7/gs4FsKEkK1p6BgF34YLEvKVVMS5wcBh/cwYP2+nfw3KkzVAuwxyz64iQ87mhjUgaCpupvi57698w7ak1T5X5pkTGseeviLohof3g5+cl82MKWG6B8+4n4bwwZxw/iruvdk8aMcxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762837194; c=relaxed/simple;
	bh=dTppW2G3S/cO/EyzBLJMsq+TWXwOEVlERgcD1bxefIw=;
	h=To:Subject:From:Message-Id:Date; b=U6jpKvIkGjZWAnXfkW2MMvMHGqBYQstkDNyI141K8n0gSR72VeUsYWw+q9isyYQH2XF1rvE+04eDP77JNThHkf+mNZ09p7VcYXy+GoFp0DtKoS30A63IYFd8b0EzXHZV3UDkFSiWi7bOZfXSjZvj2tQ1UqkKv0WAKqKAjCtrntw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0DZLmT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0DZLmT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43E9C19422
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762837193;
	bh=dTppW2G3S/cO/EyzBLJMsq+TWXwOEVlERgcD1bxefIw=;
	h=To:Subject:From:Date:From;
	b=d0DZLmT5bZVuONYaB6EIwMXqA5+SDcCp/U3m7z5vgeiR9tPJr4EOiEnG1cy+3mgH4
	 sfNzHdMwAIJW1ctKEoGMQfB4cpI9GgTNRyCkn0QaWg+V8+gsP5qQYQKMctyLh+CDW+
	 xVBYPnKTbLQcxIshE9Qm5UQHUYgFvxNiz4Oz09JIKh1xxUHbI+EgwcXvZXRQScFt3d
	 8kJfiLXbLqo4KlsKhf737PuVRIG6pQwUAUaeVx+yumg3W4QBP+57hbd/Oh01ILoedH
	 XdspQnQ5ArN4bpuX7Vu+c/xDthdoiIjZw3xL85U7tc1ts/lRY43GPeDVuZ/sqMptqn
	 AGaZUz4ENMLwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E181CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283719363.31556.16762487834935549788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2119cae4c92622ef8a34d3b80ee906fb1c60286414b58aff1a8906a10d0e8f
Date: Tue, 11 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762837193
