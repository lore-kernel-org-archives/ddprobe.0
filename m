Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4DE20B7F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744361994; cv=none; b=EoaNZV5PyhXX28rhZOg2UWZpBPyPMtE43Wklg4CjkuLqfXND8ikjXyeojZ3wtxfGJiSwUmPAoaJDXUdsCO6I+S9ec4m19+uVw7sHWy5oRfmFGBvjoHa+oX3EteUnPPrEM8SxI3B0h2jBorHcVRBaEQVn04+4V0PokmFdacrvSzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744361994; c=relaxed/simple;
	bh=YdyU7LJl3XA+9X8dVKWcobos1zEQ1V5qmxNA5V1xtVo=;
	h=To:Subject:From:Message-Id:Date; b=Z6iWdFeVKPQilGT+X97H8ysAJgzZBWAdPCV7zOf1ZeUjphE79ApBmVFj1X7yHdkzX9jqfsFfZfa/He0DX+uWm252rMQzK1eIYgWZSWI++RnpCS2lvX3lqEwSV3L8Kibdw7YXZhntYgpTzzmKReFXmQ97fJBu+6o6DlD/cl/lUt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZzrGFz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZzrGFz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AB1C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744361993;
	bh=YdyU7LJl3XA+9X8dVKWcobos1zEQ1V5qmxNA5V1xtVo=;
	h=To:Subject:From:Date:From;
	b=sZzrGFz46qYK8Xo5VpE5OL4B+2RgyWSZ8nQLmLRtFS06tsQqpmqpiOvyc4ZjxUt1E
	 k9rsV1IAyvhZ79GIwjAEZObSOgeL8C8CjpRFa4pWeE5wywM2Pd46xfOtxhGWo8Ue7R
	 1eP7lGj6BX+NGKdTgRE7Xx3TTvcw0Hnw/9oawU5A9vfLOBSKu0HwwDES6IzDOghpK9
	 pF6ZYvevNXDzFSLQ9HZa61lRa+fHhj+KROTNAGXrLqExaaT7HR6NlzuBHolIR4tFSQ
	 8QeP5QQ6uoUJUNbALcWhmlRf2RUd9Yaij6kh2F7okOKy4vimOaRoe+gkPKbVlDtFFj
	 wZ7hThIrTA0tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D88C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436199361.23218.11062269300843634400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a81eae3251499e8a758c4db602a5060af07a2618c2bb259ee48604f2a16038b
Date: Fri, 11 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744361993
