Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13EBEACD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762139993; cv=none; b=tTDvEVuFp02U0W4oV90CnOuHYyfDsZkouk6GiWSygSq/oHPm6JQcQYx6W9epLthfcX8DUyOQfet5z0V0SSTZUGcOZWrUOHSIRlRNnbfK1BIuKuUH4RLVnrdDgFCvRd4iVNtyGID6i56TyCGkBqM8GxNNCVaTWaoaApEDdnnnJaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762139993; c=relaxed/simple;
	bh=vQhzVlUW+UiW/FtJj/QM0oiidk5DXvGI1o/4/QLB63U=;
	h=To:Subject:From:Message-Id:Date; b=Pn5XYFiugSQnNyxqkSN7HUb+Q8pPJMLJqc0jvtHY16bKbPIdqr/CCbKM69MZFGdieSU2O4wewTgsU4rEAgKDXZdKvpj6TBI9KAZ/NgJITTPp5d/5j6gtB1rmsYgnp0oshigWbxac+CH3PTbdw2tvf1iRHbOxw1b57Goswz/hnZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMT4lhZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMT4lhZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B3FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762139993;
	bh=vQhzVlUW+UiW/FtJj/QM0oiidk5DXvGI1o/4/QLB63U=;
	h=To:Subject:From:Date:From;
	b=KMT4lhZNRjLgBKMq1x3i1C8RaBiTMUOS7nQRtjmbrPO0YJbSVztxd0LBKTAN4aryI
	 s38JNqJiRXTHdoxKBL7CYWUv123at/fMR28U5sxNEJEKDdANoqn1J+t5tHg2Q+gG5c
	 n4aas5VXgkfYEjkQiDF4xjU9ZdRXHZxIbBAvTfYogkWKdc/x0MqfH9XwNPNalnAR3Q
	 a7oG4z+3E5QCMKg2t1qs5KKOwYbJDlnuxPqUdXG8AxAYxlVqzMr5HXxyhvYHh6G/2J
	 kWc6usqNYTkOpJ2hXFiw6CyMpCnB4R4mGvxEP3Z//No8QjAl/J5o4nXySpn5t2eM8o
	 9af0YcQeR9/fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92303CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213999359.26115.9787702429350499217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971182301b3f14e39f81ce9375a494d489f94434c26a9e15217943c72ea4f838
Date: Mon, 03 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762139993
