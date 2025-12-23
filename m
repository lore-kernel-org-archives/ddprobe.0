Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23952288517
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766526234; cv=none; b=JYV3ZSXEbKZZh6ZGnAxY4Cw9Xi/Hd0Ectgwau5ksTCGFz0iI58mnvhcfRKpCi/XrYFgODnn5pjSIagA5JcDHcHeYYSYZu6RJORzjhkUSVw2xpwIf8l0INRbEjPsFODDoyYFTQZrokRH/uBnzdomz5CU8M3i0xturF6ontkRrEl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766526234; c=relaxed/simple;
	bh=8RJjS6Pm2f665ijU3lLQPTEHsZZa2mlQRot5+tRggJs=;
	h=To:Subject:From:Message-Id:Date; b=tvXQjVHKcn96ZJTADAOpvUQ47IikdLrhCM4wQdKyInKiPEPqr7fkS2r2XHABgrDHJGlbnxMaggtFV+uyrF3ZzoiEmgI5W4QkLpH7l9xBY5aqc6/ZKNTltroL/oGg5rnwL7YPqVu0L0PmAJUgrqqK8V58jd7C6YbElxDo8BmJ1KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW/Qrh0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW/Qrh0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A203EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766526233;
	bh=8RJjS6Pm2f665ijU3lLQPTEHsZZa2mlQRot5+tRggJs=;
	h=To:Subject:From:Date:From;
	b=DW/Qrh0nA+X3C43L4Qx3OVGBoH0PHPEydjB7/o6Gw12tTrVMjjBnsdGhhYNVAdU8Y
	 8AYjdwgMHes4gResdtmNG1uKDtdr4AX6sS7SV7OtSkj7/HIijVge/VfWUODDM2ZjNi
	 hKgV6T7eQJlqvDzfBYnNrihcxkLrOi2HF7+cG9IfO/cFMMGLjkWrvRjkmGUJdeC8k1
	 LuQLAbuhBf3iFvkndgu5MPFspKDUP5MjI+3bBb+98xhuwki3hXhgQl+Bd/9bsPwXcc
	 nS5f3TcS0juX5GzUZsgwbWIbeDTe/Ms9Sbn4uk2eG/ylAjMAZJQlEUpSfWFsPBkQnK
	 Etw4ZHE2ayGKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91874E748EE
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652623358.18593.16501398458505049252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5089a61310644f1dc9343996b0aebb46c121e2636593c3ea0a9301e57ddcc1d9
Date: Tue, 23 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766526233
