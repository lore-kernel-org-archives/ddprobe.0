Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768CE6AB8
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716956063; cv=none; b=lvMWSeo57EINPSbUUGUPgJIvoflf5qJz7jVZUWv64OMAtSr9mWHtpXPYN92eFebEaev+MOFl2x9l5Q2mQRgsrGACo3saoIQkrw6GN/RU8RnJuIa5bFusykWwJxGSx+jAu7gOnron6l9ip2akyIHr+ipMpv+yyGU2S5WfJEYu5Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716956063; c=relaxed/simple;
	bh=ord35Htl7Zf0jbH9XaDCn3EWr+waFGBFBjl94MjZGBs=;
	h=To:Subject:From:Message-Id:Date; b=G2yNuD8MlMBNzFRj859yVWcaa6kE+6y1y4LHjhIqtgB51XQTs+YisVjl2bsnrYIpcw3VZFjuFPAqoTCgqcmgJbYoIDH3EdECfoV8R6/bKHKXKH9KxWKNUHt3MJKg2LU8o9IMsgYWRq0etHcGJ1mJ5C74S6ZBwdhJkwN5JP48464=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szJ4YfAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szJ4YfAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE869C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716956062;
	bh=ord35Htl7Zf0jbH9XaDCn3EWr+waFGBFBjl94MjZGBs=;
	h=To:Subject:From:Date:From;
	b=szJ4YfAJWgIAtppCxM9U1AMWyFbEOKS8LUZhhv/1UxBWXFbPovuThO4YS447iehlw
	 G5w0FFd5FmGtAB85sqY5DXyGg83VNaBhC53kzLjqAp6Pa9TOwBYjNPoWiTk4usX6hh
	 d6OqEzOa231M9drqIrkSs3UE40JezAxIO3LB/8u6vaVGziB6qn+GADYOAYY4bEk8Ts
	 mawXNMD2eSHxqwRaszdDRf7rkwItOUE/r9x5X3J9UGvYcd7WbZ36AuppSl8MwwFQQ0
	 k3sAjBD8lIuw4IrtHNI7cwHQr6sfuVYQ12vQBJFfptSJoKdpt7Z2ljbb71YgXAtXHJ
	 5xN79Y1JkubFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D8AC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695606276.25258.3302731831798900344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7088acf0956f5ba2d1ea5ccc1012bb77f705285ab9afb0033e9b4ddf93208b
Date: Wed, 29 May 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716956062
