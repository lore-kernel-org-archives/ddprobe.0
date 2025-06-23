Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317631F181F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750661995; cv=none; b=VbcZb6nr2SEgzhlHhEZ5ap6tTPCGEitwN+YI9Ao8+/gY/ND93P1GqfMpiBRNJdlLUUcaIcrfORIn4H1CTLEurWCFchjIIqk7lkJOQZ9HgcM8a3fzcMMunKEq8JNOE/VYkE8KcJAzuxUrJhwPqgUZiBuwDE44CcLIZ08/HH9gn4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750661995; c=relaxed/simple;
	bh=YZ6lC2U6Op04Plzfge/lUgv8JLwrFaPkKaVaoGOKbEA=;
	h=To:Subject:From:Message-Id:Date; b=mbF7lzK7CBizXguRa9VkUH21Sx2cWtJDEqqQcZ+VJafzzXTDgsqc8e1/MnQCjCQX6wjTcvAWzWpbgIwtut9RExx0He8PBoT+EsIZRR80N7vC+tcm4qc6/cWjYSYDKKC7URxZeqOOqnDki5PKg1GqoCIJyPVZvWM0H533d+Fupz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WN/mR2Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WN/mR2Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2A0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750661993;
	bh=YZ6lC2U6Op04Plzfge/lUgv8JLwrFaPkKaVaoGOKbEA=;
	h=To:Subject:From:Date:From;
	b=WN/mR2WsWg2yFmcyVfQX4OEk29cu0ererUHXTOEm820C4bly8qgxijUnWnyGSvpVI
	 m32FUxAnRsHaXMaslmMdcnqtjjJB0GLWBMVEbFLYlZpUQYbxcWm0UyeuBN0j1IXuti
	 oYZ+jsapgIh27eYvHKYweXL0qKpKzbQTIMEK2quVbqQz1dNqDcDCZxD011kSeMJkzT
	 1xeqqS8Ns3I4s937bPsh/0Xtk/8Gxp/8rS+tW8Ej5FJr6oOjOeuQefqF7kFTPqqGNp
	 DLn3ON4tkAfIO257p6mHwg65T6uo5aKKiseu0ojwY37MdyJQwy2jJ4I534A30mtdgI
	 MjCkIgEtH5Qtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68EC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066199357.19037.9890192115755054403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566c01ba97395e00784ab71d76888eb32140c1160e71e7a4ee34b53241199dc8
Date: Mon, 23 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750661993
