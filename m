Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9992D46C3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751584795; cv=none; b=bj+k69fq9AMA4dOwQw2TfbMSq4EKbSf7vEyF0lbB/xGLYUjKsxkzGT71F/fDIoqHpmxQwTq8YgaY2ZjV2tqzKY9l3Tjl/o6gx528dmIZwJo9wuUZeZRHhQ5KdE7cePrwEeLaKNlIyymmqHuSxa7J0oLqsY/S3u1jJjjH9wpTzuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751584795; c=relaxed/simple;
	bh=TFumHY6IDLSHbi9cb4tlA4Iqc/1a8/U2rQx6gKrrSh8=;
	h=To:Subject:From:Message-Id:Date; b=EvboCR5XgnoQVflZI3jWEI4ZAyJSsSG3GPxOtz3HSYJwiOmw1kpxlRXlkSl/3ok7L4rSdmNxZX39EWSkncL4STUgSryNrQ+cJTWORf6HSJgxM7e9R9vbD3aljh5LX5krQmkbiYVTUy1MkpQCHu/+HwYsrL8SjahGiGIEa5/+E3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2JemqNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2JemqNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF50C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751584793;
	bh=TFumHY6IDLSHbi9cb4tlA4Iqc/1a8/U2rQx6gKrrSh8=;
	h=To:Subject:From:Date:From;
	b=Q2JemqNBw/JpXcasaHpkGbE82ChECK8zmsGWNQKZ8qOxLOmTzsVC+GNQwfjHVxlg8
	 h6r+XExTFYxMnqinQEBPb7b4tdSKWUeBUgCrJhwvmeOdGZznxN7Q3gdH3qWlgAFDOg
	 o8lJsNtZbHjNH8W7+8NqqQeQpbtCI6lbzVQFtW7K4mEGYw6L6V57uQcxsowXUgvYc9
	 /Z7gJylTqTRIHbwlkX1IsZ/lLIuWa79KkcGUHlXK4h9obMLQsU4xmls1bhPIAiJMLj
	 C1sODBf/itxxQyAGbCsrMabwovbSmR9RjJJ5maStMpLQq753z04ObTLtMGeI17btYx
	 FkUpBD7nEu1pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFEC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158479357.27076.4887126228249439321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3f08464de9ccf39f6be7b8f8d874bebea8e463feb25ed7f19cc7d22f1f641d
Date: Thu, 03 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751584793
