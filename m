Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AA51EEA3C
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742542794; cv=none; b=pm+ccyN5uXZdE9BRhEHQohw0CFzPNRkbWvwcpAPUrWh7l9xLzt8nNuyLZKRzszJh9XZUhoqd5701xuZtLzr84d8tkwowsHoxCKGgMHYxNJeHhjLKdU8OzVCW5VAhT1aJaPpjqd+B42zVVYopbnphpX3/KG0yAjx73DYytRM6VGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742542794; c=relaxed/simple;
	bh=q95S4tUMdrdAtKj9WITFV1crMEkXeF9zjGd504xcV+k=;
	h=To:Subject:From:Message-Id:Date; b=pysr+BCr3KWCXN48PAWhYCcHP6VI4PAlcp9M7LlCdb2oi7edsLzF9pCNUIaz92wo5wpNtT0emSIpscA8A3pY/o4NVbL3NKIEXlddwqasxk9yJv+Q9oPURd0kxDMxycibdXGuc3A7jOvl920a5UGOJ0r1NB1cLav+c89zNwyrMuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gM6Ah6aZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gM6Ah6aZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE40C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742542793;
	bh=q95S4tUMdrdAtKj9WITFV1crMEkXeF9zjGd504xcV+k=;
	h=To:Subject:From:Date:From;
	b=gM6Ah6aZggoQvsQgcrMMkPy8TmaGHbvx0BBza1uPGsMQb2ifELqh4o2KgLIXTkyX8
	 2/uE2IeeX0C+EuqvD9Ro0kDLtQZNZETcjXc2ido4L08HZI5aBYQtQhEI5ygzXJmtJ6
	 4RS9aPCzRWBkf0ywQSuxkZzbD8EKlCR9RmtO0sDgSWFMTDpzFtM3jftTF2W//YO82e
	 3ATMIBip5uXwsmfqSG6QRbqCRpb0cGqF+ZJpCtyKzW5qDSengTk06fdLydWeZLA277
	 uQDdNCaQZEfu48hUF1Ia1nrWwIxcQDVPdpf5cebe5zJrqffuF7wGnaeFZ/WWhQr19P
	 CvoJ0RaqaiaOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96758C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254279360.18736.11847358075852335788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e51686554260d8109112314d1da458c3c52ee25ff3bcac8966482d33a69e02
Date: Fri, 21 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742542793
