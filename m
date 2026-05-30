Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50798249EB
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780107814; cv=none; b=GplzPK5ixM/41Yi4wZTARTI8VSuntIs6n2jat3I+rBWGJGmeuVaUcf4eAsB4CWc91oWus27GBAAfXPfqOFafU/oUZkcG/0gMTNed50QR6wMwkTYpOnDfnNwS0c1hqt1tlt+tJLUq0eBx5em/NHNKE1QdZRhGvdy4OPyjej76hyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780107814; c=relaxed/simple;
	bh=8DkGN0cU6ilHWQuqitXsFf9bGKl/MLCyCnOl7OeqHdE=;
	h=To:Subject:From:Message-Id:Date; b=pXjzV+Ppzs4vDSb5JJh2X6YhHnUEVNDFCYeeoiehY1yGFbyWxAZ/bJnocgE4jXLjOTkDqx+B2ebDpxJoSZj7kKMEi9Y58+ypiCrTkQxcJnk84URxtPqgoIWSQbC3sxZZCn1M4vJtn4Cyl5aUoSlQ1sdt6aNe0qJtX2HHZzf86ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9QniJk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9QniJk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B56C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780107813;
	bh=8DkGN0cU6ilHWQuqitXsFf9bGKl/MLCyCnOl7OeqHdE=;
	h=To:Subject:From:Date:From;
	b=t9QniJk7CqOANZs4UDdqy7kJzsV4waA0sfGHmpF910eNUWxMdFVNl91Pq4eH8Ndwc
	 3VnCsr5XkPuS1WhXLxy7kNTzmGVTIm6XfryE05/ndy1CaGvf544VnUtVEq8H9CmXQH
	 yOd3jyWV+NNVSQcW0+3qqgP6u6ap3b69qHYndvMzTvOaYWLg43cVCfFRbuk9hQe2kp
	 iq7gPZhjYmzyF3+s6qPncfup9M3CqbtKc3htqa/ETmQ7kNf3DUANpKyvR6ts2vdy0y
	 fV6HJShUwkvYxd1NNlqoL/D+4LrGw4oXStnIoif51Zp1iBQK+rJCSsZAG1IkVLvfn5
	 cDgbc0giqNsWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09C9CD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 02:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010781369.23038.3371518214552700194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19cb1619316917b4cc27414d74cd69670bf587eb87a7427a788241ad670bf947
Date: Sat, 30 May 2026 02:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780107813
