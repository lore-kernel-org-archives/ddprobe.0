Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FC219CD01
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738059354; cv=none; b=rXT+YKzdOWQwchxEKR6Zp+9IXBXQ+8hzRc8UqdhGLrZpNdWKsR6KhfPC5CI3Dp/KBMzgj5izOlq8XfNBV8JHocLzRstt5uLGgHc6kce/fKexhOvzSFV0/5UVPcRP7Nj9yTzqnQvSIy0mcGU5nw+3EIcbotVPHcbtS7ZQguna98w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738059354; c=relaxed/simple;
	bh=Y/cZBz0ePB7Z3IKwAlnDwkvlqfHzmLOLt4WJGK+WjEk=;
	h=To:Subject:From:Message-Id:Date; b=JK2+XjQlGsT9LFeDELwmW9mZv88VesqCZR8W5aV9zzb7wx3hb66EdaC9zzXVabJ3lTd4KR3FF9InAfjFjKCh2Cqu7mgOOrk+DwXtbqWy9ViFfmjZeK4B+PS2DCka7mkHJOXBao6G6nM96UtSi3yLK2zd2/KRiNXqV+5NFHyLJH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMZIERmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMZIERmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE05AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738059353;
	bh=Y/cZBz0ePB7Z3IKwAlnDwkvlqfHzmLOLt4WJGK+WjEk=;
	h=To:Subject:From:Date:From;
	b=WMZIERmVDIRxY05Bp5Vls2khY0bq+nVFuHByx6c1gqqVMv24c4OJ9ZL4rNVAFimfH
	 23RweaNbUNtmmlJ2ieKstbvVVcDCsZ52nBU66sNfwfY4lqeJkYoA2MZjBOo8WhqzKy
	 rIlfqTFUNbhCX5siKMnwjWkLDBtK9Wmy2+f36GVgZUFrXzAduPPXuBSx39UVplMujV
	 B0xATCu0yBPSzZIjSjhwZsIZ93kRmcvOGHxIT9n0Om+4CM6J0nlZxUOE9iMJOntmpe
	 vOGkdpeJdHr2mNcp5CDCR6UAsGXJHEu4qaYZHgbwSYU+eoh450fkfdbHoMkhca776s
	 3xC/GLvQ+ry2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9557BC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805935359.11591.10938625639164696756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2def295195b38708733e80cd75f1da66086c5e62f50dbe87dbb8cf1547f4eb4
Date: Tue, 28 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738059353
