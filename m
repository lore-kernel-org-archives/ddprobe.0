Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE59EECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711761497; cv=none; b=lgfGIDmOTOzk+yXnfd8qgBlWnB3KWaKKcMJ0fAst2mOAMjrYzMdFi9Rbh4IRhkFkfGjbtKp62PjcvW5W5LQsLwUSYsjm4/CXsqNgY5Q90Wk3fBHBBpn6wdzvFs+BECyeJSGRP9IgSTM4Cmnfh3lXD2hr1XwLf84CeCvVVp8IywI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711761497; c=relaxed/simple;
	bh=wzWs+AT2tBbW8GsYT5vJYRp4ZMkkKYQXr80y+qntf58=;
	h=To:Subject:From:Message-Id:Date; b=K0XVvh8V6ob0o8NkVL2cQz6FZSIXXuYilER4BCDqwPV2aOpV5sg+EDm0IEv8kYGmx75bUdHqBnqw8BfS9IOTq/URcSQLoUfY9dGOs7WRJ5pw1lhmNPFxyMebMJSuLu9BXAKRoWG5qSqhMEQhPPJYd/q8hIYGZzbFlhVRNurVNIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZjZYzg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZjZYzg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7355EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711761496;
	bh=wzWs+AT2tBbW8GsYT5vJYRp4ZMkkKYQXr80y+qntf58=;
	h=To:Subject:From:Date:From;
	b=GZjZYzg3ziiOMaiw0UbiaiIyES+aZY/i4hn6tFLpVP3Jx3D9GjrlZvwNWSOVQt/oj
	 uSWOwLAKhfmujlUML23BM9Hkn1WEHtVp0LIxNala8awI1ciyph7GTtz7aNKBsRxfGU
	 JuU2s93TN3MeC5zFN11e0qacsSGtJWZK78pl1el6hjvM6fSoKVvdh6kjLJWQr9JfRq
	 OqAtIoh+q0AOy5iHE/JZFWuqOq3nx5adrDUNxEVv41jj1NF7+xxObJo2NjN6lOeY8r
	 6/cLbnEKKndroFy8p0fcXBt/mjw3Q9QAJqnbOvnlnbMryBUO+FS0FAH74WNsMoJbyc
	 T1tLmGEGXdWgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6207CC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171176149637.27728.6227331973900865387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3caaa8213377b222961f71efc7b45201dd9fc7c33fa9991e55a2d1a6a4a9949f
Date: Sat, 30 Mar 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711761496
