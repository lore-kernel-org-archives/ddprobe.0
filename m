Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E11379C4F
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788370834; cv=none; b=D7dUmNvPkHjFH00YBlBAcUp/PriERBVmkPJVywrVvGp1TAeRV85QILVOUsTLlLbjsBOSD+dIshpBZBKo/IzN7Vivt4cq7aMsBTTlu2Z5hjfYMhGSo2fbLLkEmhBzft+SZWePO8Rd1UzYWnNRcSxgbQZ1V8RP7Vvr+JQQgsMxQ+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788370834; c=relaxed/simple;
	bh=LkLPQCY1OsJWo0+W8I/WU/6xjtyp3HAM+s9rLet5iB8=;
	h=To:Subject:From:Message-Id:Date; b=jnaXgdZST6rBQ8MI8Xwvi5b5l2GD23oWzIyQ2ZW5z5qsddDlezj1IcipJ6MJwa/DwGUqNhWLGmHn0ykbYxu/b1WFtrPDzKU6qQZIF+Iobi4cVddyvwc6ZSK2fpgwdAmXYsaTr66EH9do5vUeTOE1soHQ8Xav7IUbGrGK0WyQyFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN6Iayvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN6Iayvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB978C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788370833;
	bh=LkLPQCY1OsJWo0+W8I/WU/6xjtyp3HAM+s9rLet5iB8=;
	h=To:Subject:From:Date:From;
	b=oN6IayvvtwzXbjXby2py7X6dxOyPG/za1u6eeXDcXMF5D+BTUxFG4Y0TaaACYay31
	 G6GVnqJehYhXvKmloXnuOUUvU+zXk5Z5ouKhagqW3wnJysa2lE6IuROsQKAVfhVgRj
	 w1YPMaVXlMHHF7rV3BjqAUUPOhQ8rKqABv/HBjIRYGysFWICgqLN+0V/D+oX/hONjP
	 JxcsOxJEt2PyOxY3cDxNukINwTPS12NiR9BvD75+LHA+5vT0ayc9cVjxJ//j+q93/x
	 1HCO3PwwPouaT6hzKmX5waRdW1nw8vXBmPg8TzpUWTqI+GkfbBBh97ypNNuwMwnoWf
	 4+r8KNbXr9Wkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA470C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837083368.11099.72027662401772039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebbff502b4e9b5cab92e1c3320575a127031f41e2c7a15cf1b45e699f27b730
Date: Wed, 02 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788370833
